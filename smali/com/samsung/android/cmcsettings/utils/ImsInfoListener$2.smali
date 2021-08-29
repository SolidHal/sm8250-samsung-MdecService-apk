.class Lcom/samsung/android/cmcsettings/utils/ImsInfoListener$2;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "ImsInfoListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener$2;->this$0:Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeregistered["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsInfoListener"

    invoke-static {p2, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsInfoListener"

    invoke-static {v2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old mOwnNumber="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener$2;->this$0:Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;

    invoke-static {v3}, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->access$200(Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", new newOwnNum="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener$2;->this$0:Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->access$200(Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "update the OwnNum"

    .line 7
    invoke-static {v2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener$2;->this$0:Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->access$200(Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;)[Ljava/lang/String;

    move-result-object v1

    aput-object p1, v1, v0

    :cond_0
    return-void
.end method
