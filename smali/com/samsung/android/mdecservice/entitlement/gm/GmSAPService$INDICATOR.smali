.class public Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$INDICATOR;
.super Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$MESSAGE;
.source "GmSAPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "INDICATOR"
.end annotation


# static fields
.field public static final MSG_ID_INDICATOR:Ljava/lang/String; = "mdec_state_changed_ind"

.field public static final MSG_TYPE_INDICATOR:Ljava/lang/String; = "indicator"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$INDICATOR;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$MESSAGE;-><init>(Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;)V

    return-void
.end method
