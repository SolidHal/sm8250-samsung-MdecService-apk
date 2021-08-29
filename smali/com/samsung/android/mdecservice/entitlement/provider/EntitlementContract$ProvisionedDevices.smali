.class public final Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$ProvisionedDevices;
.super Ljava/lang/Object;
.source "EntitlementContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvisionedDevices"
.end annotation


# static fields
.field public static final COL_ACCOUNT_TYPE:Ljava/lang/String; = "ACCOUNT_TYPE"

.field public static final COL_ACTIVE_SERVICES:Ljava/lang/String; = "DEVICE_ACTIVE_SERVICES"

.field public static final COL_AUTH_UID:Ljava/lang/String; = "AUTH_UID"

.field public static final COL_CMC_VERSION:Ljava/lang/String; = "CMC_VERSION"

.field public static final COL_DEVICE_ACVITE:Ljava/lang/String; = "DEVICE_ACTIVE"

.field public static final COL_DEVICE_APPLICATION_DATA:Ljava/lang/String; = "DEVICE_APPLICATION_DATA"

.field public static final COL_DEVICE_DEVICE_DATA:Ljava/lang/String; = "DEVICE_DEVICE_DATA"

.field public static final COL_DEVICE_ID:Ljava/lang/String; = "DEVICE_ID"

.field public static final COL_DEVICE_NAME:Ljava/lang/String; = "DEVICE_NAME"

.field public static final COL_DEVICE_PUSH_TOKEN:Ljava/lang/String; = "DEVICE_PUSH_TOKEN"

.field public static final COL_DEVICE_PUSH_TYPE:Ljava/lang/String; = "DEVICE_PUSH_TYPE"

.field public static final COL_DEVICE_TYPE:Ljava/lang/String; = "DEVICE_TYPE"

.field public static final COL_ID:Ljava/lang/String; = "_id"

.field public static final COL_IS_LINE_OWNER:Ljava/lang/String; = "IS_LINE_OWNER"

.field public static final COL_LINE_ID:Ljava/lang/String; = "LINE_ID"

.field public static final COL_LINE_OWNER_DEVICE_ID:Ljava/lang/String; = "LINE_OWNER_DEVICE_ID"

.field public static final COL_MODEL_NUMBER:Ljava/lang/String; = "MODEL_NUMBER"

.field public static final COL_PD_MSISDN:Ljava/lang/String; = "DEVICE_PD_MSISDN"

.field public static final TABLE_NAME:Ljava/lang/String; = "provisioned_devices"

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

    const-string v1, "provisioned_devices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$ProvisionedDevices;->TABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildUri(J)Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
