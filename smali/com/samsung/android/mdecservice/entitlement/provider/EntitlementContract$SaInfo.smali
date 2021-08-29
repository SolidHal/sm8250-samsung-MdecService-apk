.class public final Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;
.super Ljava/lang/Object;
.source "EntitlementContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SaInfo"
.end annotation


# static fields
.field public static final COL_ACCESS_TOKEN:Ljava/lang/String; = "ACCESS_TOKEN"

.field public static final COL_API_SERVER_URL:Ljava/lang/String; = "API_SERVER_URL"

.field public static final COL_ID:Ljava/lang/String; = "_id"

.field public static final COL_MCC:Ljava/lang/String; = "MCC"

.field public static final COL_REGION_MCC:Ljava/lang/String; = "REGION_MCC"

.field public static final COL_USER_ID:Ljava/lang/String; = "USER_ID"

.field public static final TABLE_NAME:Ljava/lang/String; = "sainfo"

.field public static final TABLE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sainfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
