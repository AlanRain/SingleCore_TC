-- 

DELETE FROM `creature` WHERE `guid` IN (252244,252245);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(252244, 2533, 0, 0, 0, 1, 169, 0, 0, 0, -8731.58, 541.932, 101.111, 0.8330327, 120, 0, 0, 0, 0, 0, 0, 0, 0, 26365), 
(252245, 2532, 0, 0, 0, 1, 169, 0, 0, 0, -8731.58, 541.932, 101.111, 0.6576703, 120, 0, 0, 0, 0, 2, 0, 0, 0, 26365);

DELETE FROM `creature_formations` WHERE `leaderGUID`=252245;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`) VALUES
(252245,252245,4,0,515),
(252245,252244,4,0,515);

DELETE FROM `creature_addon` WHERE `guid`=252245;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES 
(252245,2522450,0,0,0,0, '');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=2532;
DELETE FROM `smart_scripts` WHERE `entryorguid`=2532 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=253200 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(2532,0,0,0,1,0,100,0,10000,10000,30000,30000,80,253200,0,0,0,0,0,1,0,0,0,0,0,0,0,'Donna - ooc - action list'),
(253200,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Donna - action list - talk1'),
(253200,9,1,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,19,2533,50,0,0,0,0,0,'Donna - action list - talk1 for William');

DELETE FROM `creature_text` WHERE `CreatureID` IN (2533, 2532);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `comment`, `BroadcastTextId`) VALUES
(2533,0,0,'No fair!  Gimme back my gorilla!!',12,7,100,0,0,0,'William', 50298),
(2533,0,1,'Gimmie back Jum-jump!',12,7,100,0,0,0,'William', 50299),
(2533,0,2,'You better not break Jum-jump!  It''s not fair!',12,7,100,0,0,0,'William', 50300),
(2533,0,3,'WAAAHHH!!!',12,7,100,0,0,0,'William', 50301),
(2533,0,4,'You''re being mean!  I''m telling Mommy!',12,7,100,0,0,0,'William', 50302),
(2533,0,5,'Stop twisting his legs, they aren''t supposed to bend that way!',12,7,100,0,0,0,'William', 50303),
(2533,0,6,'You''re breaking him!',12,7,100,0,0,0,'William', 50304),
(2533,0,7,'Stop it! You''ll break his legs off!',12,7,100,0,0,0,'William', 50305),
(2532,0,0,'Ha ha! I have your Grindgear Gorilla!',12,7,100,0,0,0,'Donna', 50287),
(2532,0,1,'I wonder if your Grindgear Gorilla can jump across the Park!',12,7,100,0,0,0,'Donna', 50288),
(2532,0,2,'I have your gorilla! Nyah nyah!',12,7,100,0,0,0,'Donna', 50289),
(2532,0,3,'I wonder how far the gears turn?',12,7,100,0,0,0,'Donna', 50290),
(2532,0,4,'If you want him back you''re gonna have to beg... like a monkey!!',12,7,100,0,0,0,'Donna', 50291),
(2532,0,5,'Now who''s the crybaby, crybaby!?',12,7,100,0,0,0,'Donna', 50292),
(2532,0,6,'Baby wants his dolly!',12,7,100,0,0,0,'Donna', 50293),
(2532,0,7,'Whoops!',12,7,100,0,0,0,'Donna', 50294);

DELETE FROM `waypoint_data` WHERE `id`=2522450;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(2522450, 1, -8731.58, 541.932, 101.111, 0, 0, 1, 0, 100, 0),
(2522450, 2, -8720.52, 529.999, 99.3708, 0, 0, 1, 0, 100, 0),
(2522450, 3, -8716.57, 522.528, 97.612, 0, 0, 1, 0, 100, 0),
(2522450, 4, -8710.38, 522.662, 97.4771, 0, 0, 1, 0, 100, 0),
(2522450, 5, -8703.03, 528.912, 97.669, 0, 0, 1, 0, 100, 0),
(2522450, 6, -8685.83, 539.951, 97.7841, 0, 0, 1, 0, 100, 0),
(2522450, 7, -8679.19, 551.407, 97.4845, 0, 0, 1, 0, 100, 0),
(2522450, 8, -8663.87, 554.612, 96.8751, 0, 0, 1, 0, 100, 0),
(2522450, 9, -8651.75, 548.373, 96.9836, 0, 0, 1, 0, 100, 0),
(2522450, 10, -8638.92, 537.941, 99.4104, 0, 0, 1, 0, 100, 0),
(2522450, 11, -8629.57, 534.889, 100.717, 0, 0, 1, 0, 100, 0),
(2522450, 12, -8616.79, 517.027, 103.246, 0, 0, 1, 0, 100, 0),
(2522450, 13, -8610.89, 516.332, 103.775, 0, 0, 1, 0, 100, 0),
(2522450, 14, -8600.68, 525.372, 106.517, 0, 0, 1, 0, 100, 0),
(2522450, 15, -8582.68, 540.197, 102.279, 0, 0, 1, 0, 100, 0),
(2522450, 16, -8582.6, 557.728, 101.851, 0, 0, 1, 0, 100, 0 ),
(2522450, 17, -8588.54, 571.377, 102.515, 0, 0, 1, 0, 100, 0),
(2522450, 18, -8582.75, 582.445, 103.492, 0, 0, 1, 0, 100, 0),
(2522450, 19, -8581.09, 596.986, 103.326, 0, 0, 1, 0, 100, 0),
(2522450, 20, -8572.61, 609.681, 102.628, 0, 0, 1, 0, 100, 0),
(2522450, 21, -8554.31, 617.579, 102.079, 0, 0, 1, 0, 100, 0),
(2522450, 22, -8547.34, 628.095, 100.969, 0, 0, 1, 0, 100, 0),
(2522450, 23, -8524.76, 636.519, 99.995, 0, 0, 1, 0, 100, 0 ),
(2522450, 24, -8514.57, 643.758, 100.198, 0, 0, 1, 0, 100, 0),
(2522450, 25, -8512.06, 652.878, 100.291, 0, 0, 1, 0, 100, 0),
(2522450, 26, -8521.83, 666.528, 102.661, 0, 0, 1, 0, 100, 0),
(2522450, 27, -8535.99, 686.327, 97.6789, 0, 0, 1, 0, 100, 0),
(2522450, 28, -8544.53, 685.475, 97.5076, 0, 0, 1, 0, 100, 0),
(2522450, 29, -8564.66, 672.461, 97.0156, 0, 0, 1, 0, 100, 0),
(2522450, 30, -8573.9, 661.108, 97.5108, 0, 0, 1, 0, 100, 0 ),
(2522450, 31, -8592.18, 657.221, 98.1965, 0, 0, 1, 0, 100, 0),
(2522450, 32, -8604.52, 656.575, 98.7059, 0, 0, 1, 0, 100, 0),
(2522450, 33, -8620.36, 652.313, 99.1877, 0, 0, 1, 0, 100, 0),
(2522450, 34, -8644.6, 658.89, 101.207, 0, 0, 1, 0, 100, 0  ),
(2522450, 35, -8655.94, 660.699, 100.858, 0, 0, 1, 0, 100, 0),
(2522450, 36, -8668.29, 676.294, 99.6044, 0, 0, 1, 0, 100, 0),
(2522450, 37, -8671.98, 683.76, 98.8546, 0, 0, 1, 0, 100, 0 ),
(2522450, 38, -8705.22, 725.675, 97.1356, 0, 0, 1, 0, 100, 0),
(2522450, 39, -8714.54, 732.607, 97.8152, 0, 0, 1, 0, 100, 0),
(2522450, 40, -8729.44, 723.121, 101.552, 0, 0, 1, 0, 100, 0),
(2522450, 41, -8742.16, 710.686, 98.2678, 0, 0, 1, 0, 100, 0),
(2522450, 42, -8738.48, 700.884, 98.718, 0, 0, 1, 0, 100, 0),
(2522450, 43, -8752.58, 688.263, 100.448, 0, 0, 1, 0, 100, 0),
(2522450, 44, -8773.14, 671.75, 103.092, 0, 0, 1, 0, 100, 0 ),
(2522450, 45, -8774.24, 667.734, 103.092, 0, 0, 1, 0, 100, 0),
(2522450, 46, -8762.72, 649.633, 103.733, 0, 0, 1, 0, 100, 0),
(2522450, 47, -8759.08, 635.326, 102.912, 0, 0, 1, 0, 100, 0),
(2522450, 48, -8758.8, 629.108, 102.25, 0, 0, 1, 0, 100, 0  ),
(2522450, 49, -8761.79, 618.03, 99.275, 0, 0, 1, 0, 100, 0  ),
(2522450, 50, -8792.64, 593.169, 97.6035, 0, 0, 1, 0, 100, 0),
(2522450, 51, -8801.18, 592.338, 97.3394, 0, 0, 1, 0, 100, 0),
(2522450, 52, -8816.1, 613.304, 95.2455, 0, 0, 1, 0, 100, 0 ),
(2522450, 53, -8828.86, 627.785, 94.0444, 0, 0, 1, 0, 100, 0),
(2522450, 54, -8826.57, 637.878, 94.243, 0, 0, 1, 0, 100, 0 ),
(2522450, 55, -8818.02, 645.358, 94.2658, 0, 0, 1, 0, 100, 0),
(2522450, 56, -8811.9, 638.996, 94.2287, 0, 0, 1, 0, 100, 0 ),
(2522450, 57, -8812.1, 630.047, 94.2287, 0, 0, 1, 0, 100, 0 ),
(2522450, 58, -8824.53, 623.322, 93.8413, 0, 0, 1, 0, 100, 0),
(2522450, 59, -8837.91, 642.898, 95.4907, 0, 0, 1, 0, 100, 0),
(2522450, 60, -8851.59, 652.393, 96.44, 0, 0, 1, 0, 100, 0  ),
(2522450, 61, -8847.92, 662.602, 97.4256, 0, 0, 1, 0, 100, 0),
(2522450, 62, -8830.06, 673.308, 98.2819, 0, 0, 1, 0, 100, 0),
(2522450, 63, -8826.73, 680.102, 97.2982, 0, 0, 1, 0, 100, 0),
(2522450, 64, -8833.85, 697.773, 97.5546, 0, 0, 1, 0, 100, 0),
(2522450, 65, -8840.87, 711.413, 97.5676, 0, 0, 1, 0, 100, 0),
(2522450, 66, -8840.99, 722.775, 97.3683, 0, 0, 1, 0, 100, 0),
(2522450, 67, -8826.64, 729.331, 98.4387, 0, 0, 1, 0, 100, 0),
(2522450, 68, -8816.81, 738.407, 97.9223, 0, 0, 1, 0, 100, 0),
(2522450, 69, -8793.3, 743.694, 98.3306, 0, 0, 1, 0, 100, 0 ),
(2522450, 70, -8768.96, 740.105, 99.1632, 0, 0, 1, 0, 100, 0),
(2522450, 71, -8759.32, 727.137, 98.2857, 0, 0, 1, 0, 100, 0),
(2522450, 72, -8731.58, 697.112, 98.6319, 0, 0, 1, 0, 100, 0),
(2522450, 73, -8730.4, 687.347, 98.7743, 0, 0, 1, 0, 100, 0 ),
(2522450, 74, -8723.18, 673.754, 98.6213, 0, 0, 1, 0, 100, 0),
(2522450, 75, -8714.73, 664.722, 98.9638, 0, 0, 1, 0, 100, 0),
(2522450, 76, -8706.44, 635.994, 100.299, 0, 0, 1, 0, 100, 0),
(2522450, 77, -8705.95, 611.391, 99.9666, 0, 0, 1, 0, 100, 0),
(2522450, 78, -8711.1, 594.366, 98.6165, 0, 0, 1, 0, 100, 0 ),
(2522450, 79, -8720.06, 591.749, 98.5704, 0, 0, 1, 0, 100, 0),
(2522450, 80, -8734.96, 576.142, 97.4009, 0, 0, 1, 0, 100, 0),
(2522450, 81, -8743.7, 570.146, 97.382, 0, 0, 1, 0, 100, 0  ),
(2522450, 82, -8747.05, 560.624, 97.4024, 0, 0, 1, 0, 100, 0);