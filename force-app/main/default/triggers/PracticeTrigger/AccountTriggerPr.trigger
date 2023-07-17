trigger AccountTriggerPr on Account (before insert) {
    system.debug('before insert Account trigger1 called');
}