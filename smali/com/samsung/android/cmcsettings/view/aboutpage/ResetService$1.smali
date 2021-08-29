.class Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService$1;
.super Ljava/lang/Object;
.source "ResetService.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletePrimaryDevice(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 1

    .line 1
    sget-object p2, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDeletePrimaryDevice : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->access$010(Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;)I

    .line 3
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pd Count : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;

    invoke-static {p3}, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->access$000(Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", provisioned Count : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;

    invoke-static {p3}, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->access$100(Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->access$000(Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;)I

    move-result p1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->access$100(Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;)I

    move-result p1

    if-gtz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->access$200()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 6
    :try_start_0
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->access$200()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public onDeleteProvisionedDevice(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 1

    .line 1
    sget-object p2, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDeleteProvisionedDevice : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->access$110(Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;)I

    .line 3
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pd Count : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;

    invoke-static {p3}, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->access$000(Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", provisioned Count : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;

    invoke-static {p3}, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->access$100(Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->access$000(Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;)I

    move-result p1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->access$100(Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;)I

    move-result p1

    if-gtz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->access$200()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 6
    :try_start_0
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->access$200()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public onDeleteSecondaryDevice(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 0

    return-void
.end method
