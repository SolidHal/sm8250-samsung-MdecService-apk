.class Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$1;
.super Ljava/lang/Object;
.source "CMCUIForegroundService.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$1;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddPrimaryDevice(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$1;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$000(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$1;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$100(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)V

    return-void
.end method

.method public onAddSecondaryDevice(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$1;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$200(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$1;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$100(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)V

    return-void
.end method

.method public onUpdatePrimaryDeviceForSimSlotChanged(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$1;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$300(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$1;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$100(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)V

    return-void
.end method
