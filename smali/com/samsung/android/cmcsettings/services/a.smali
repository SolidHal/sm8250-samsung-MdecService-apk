.class public final synthetic Lcom/samsung/android/cmcsettings/services/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;


# instance fields
.field public final synthetic b:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/services/a;->b:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    return-void
.end method


# virtual methods
.method public final onUpdatePDPAgreement(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/services/a;->b:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->a(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void
.end method
