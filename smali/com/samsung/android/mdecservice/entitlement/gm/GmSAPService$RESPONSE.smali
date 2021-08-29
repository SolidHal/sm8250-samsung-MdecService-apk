.class public Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$RESPONSE;
.super Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$MESSAGE;
.source "GmSAPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RESPONSE"
.end annotation


# static fields
.field public static final MSG_ID_RSP:Ljava/lang/String; = "mdec_get_state_rsp"

.field public static final MSG_MDEC_SUPPORTED_ON_FALSE:Ljava/lang/String; = "[{\"MDEC_SUPPORTED\":\"false\"}]"

.field public static final MSG_MDEC_SUPPORTED_ON_PENDING:Ljava/lang/String; = "[{\"MDEC_SUPPORTED\":\"pending\"}]"

.field public static final MSG_MDEC_SUPPORTED_ON_TRUE:Ljava/lang/String; = "[{\"MDEC_SUPPORTED\":\"true\"}]"

.field public static final MSG_TYPE_RSP:Ljava/lang/String; = "response"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$RESPONSE;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$MESSAGE;-><init>(Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;)V

    return-void
.end method
