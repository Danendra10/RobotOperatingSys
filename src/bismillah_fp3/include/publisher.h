

    Main Page
    Related Pages
    +Namespaces
    +Classes
    +Files

    include
    ros

publisher.h
Go to the documentation of this file.
 /*
  * Copyright (C) 2009, Willow Garage, Inc.
  *
  * Redistribution and use in source and binary forms, with or without
  * modification, are permitted provided that the following conditions are met:
  *   * Redistributions of source code must retain the above copyright notice,
  *     this list of conditions and the following disclaimer.
  *   * Redistributions in binary form must reproduce the above copyright
  *     notice, this list of conditions and the following disclaimer in the
  *     documentation and/or other materials provided with the distribution.
  *   * Neither the names of Stanford University or Willow Garage, Inc. nor the names of its
  *     contributors may be used to endorse or promote products derived from
  *     this software without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
  * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  * POSSIBILITY OF SUCH DAMAGE.
  */
 
 #ifndef ROSCPP_PUBLISHER_HANDLE_H
 #define ROSCPP_PUBLISHER_HANDLE_H
 
 #include "ros/forwards.h"
 #include "ros/common.h"
 #include "ros/message.h"
 #include "ros/serialization.h"
 #include <boost/bind.hpp>
 
 namespace ros
 {
   class ROSCPP_DECL Publisher
   {
   public:
     Publisher() {}
     Publisher(const Publisher& rhs);
     ~Publisher();
     Publisher& operator=(const Publisher& other) = default;
 
     template <typename M>
       void publish(const boost::shared_ptr<M>& message) const
     {
       using namespace serialization;
 
       if (!impl_)
         {
           ROS_ASSERT_MSG(false, "Call to publish() on an invalid Publisher");
           return;
         }
 
       if (!impl_->isValid())
         {
           ROS_ASSERT_MSG(false, "Call to publish() on an invalid Publisher (topic [%s])", impl_->topic_.c_str());
           return;
         }
         if (impl_->md5sum_ == "*" ||
             std::string(mt::md5sum<M>(*message)) == "*" ||
             impl_->md5sum_ == mt::md5sum<M>(*message)) {
           ROS_DEBUG_ONCE("Trying to publish message of type [%s/%s] on a "
                     "publisher with type [%s/%s]",
                     mt::datatype<M>(*message), mt::md5sum<M>(*message),
                     impl_->datatype_.c_str(), impl_->md5sum_.c_str());
         }
 
       SerializedMessage m;
       m.type_info = &typeid(M);
       m.message = message;
 
       publish(boost::bind(serializeMessage<M>, boost::ref(*message)), m);
     }
 
     template <typename M>
       void publish(const M& message) const
     {
       using namespace serialization;
       namespace mt = ros::message_traits;
 
       if (!impl_)
         {
           ROS_ASSERT_MSG(false, "Call to publish() on an invalid Publisher");
           return;
         }
 
       if (!impl_->isValid())
         {
           ROS_ASSERT_MSG(false, "Call to publish() on an invalid Publisher (topic [%s])", impl_->topic_.c_str());
           return;
         }
         if (impl_->md5sum_ == "*" ||
             std::string(mt::md5sum<M>(message)) == "*" ||
             impl_->md5sum_ == mt::md5sum<M>(message)) {
           ROS_DEBUG_ONCE("Trying to publish message of type [%s/%s] on a "
                     "publisher with type [%s/%s]",
                     mt::datatype<M>(message), mt::md5sum<M>(message),
                     impl_->datatype_.c_str(), impl_->md5sum_.c_str());
         }
 
       SerializedMessage m;
       publish(boost::bind(serializeMessage<M>, boost::ref(message)), m);
     }
 
     void shutdown();
 
     std::string getTopic() const;
 
     uint32_t getNumSubscribers() const;
 
     bool isLatched() const;
 
     operator void*() const { return (impl_ && impl_->isValid()) ? (void*)1 : (void*)0; }
 
     bool operator<(const Publisher& rhs) const
     {
       return impl_ < rhs.impl_;
     }
 
     bool operator==(const Publisher& rhs) const
     {
       return impl_ == rhs.impl_;
     }
 
     bool operator!=(const Publisher& rhs) const
     {
       return impl_ != rhs.impl_;
     }
 
   private:
 
     Publisher(const std::string& topic, const std::string& md5sum, 
               const std::string& datatype, const NodeHandle& node_handle, 
               const SubscriberCallbacksPtr& callbacks);
 
     void publish(const boost::function<SerializedMessage(void)>& serfunc, SerializedMessage& m) const;
     void incrementSequence() const;
 
     class ROSCPP_DECL Impl
     {
     public:
       Impl();
       ~Impl();
 
       void unadvertise();
       bool isValid() const;
 
       std::string topic_;
       std::string md5sum_;
       std::string datatype_;
       NodeHandlePtr node_handle_;
       SubscriberCallbacksPtr callbacks_;
       bool unadvertised_;
     };
     typedef boost::shared_ptr<Impl> ImplPtr;
     typedef boost::weak_ptr<Impl> ImplWPtr;
 
     ImplPtr impl_;
 
     friend class NodeHandle;
     friend class NodeHandleBackingCollection;
   };
 
   typedef std::vector<Publisher> V_Publisher;
 }
 
 #endif // ROSCPP_PUBLISHER_HANDLE_H
 

roscpp
Author(s): Morgan Quigley, Josh Faust, Brian Gerkey, Troy Straszheim, Dirk Thomas
autogenerated on Wed Apr 28 2021 02:23:08
