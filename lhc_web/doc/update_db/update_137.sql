CREATE TABLE `lh_abstract_proactive_chat_variables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `store_timeout` int(11) NOT NULL,
  `is_persistent` int(11) NOT NULL DEFAULT '0',
  `filter_val` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`)
) DEFAULT CHARSET=utf8;

CREATE TABLE `lh_abstract_proactive_chat_invitation_event` (
        	       `id` int(11) NOT NULL AUTO_INCREMENT,
        	       `invitation_id` int(11) NOT NULL,
        	       `event_id` int(11) NOT NULL,
        	       `min_number` int(11) NOT NULL,
        	       `during_seconds` int(11) NOT NULL,
        	       PRIMARY KEY (`id`),
        	       KEY `invitation_id` (`invitation_id`),
        	       KEY `event_id` (`event_id`)
        	   ) DEFAULT CHARSET=utf8;
        	   
CREATE TABLE `lh_abstract_proactive_chat_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid_id` int(11) NOT NULL,
  `ev_id` int(11) NOT NULL,
  `ts` int(11) NOT NULL,
  `val` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vid_id_ev_id_val_ts` (`vid_id`,`ev_id`,`val`,`ts`),
  KEY `vid_id_ev_id_ts` (`vid_id`,`ev_id`,`ts`)
) DEFAULT CHARSET=utf8;

ALTER TABLE `lh_abstract_proactive_chat_invitation` ADD `event_invitation` int(11) NOT NULL, COMMENT='';