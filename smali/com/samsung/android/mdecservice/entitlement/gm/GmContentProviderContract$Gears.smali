.class public Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProviderContract$Gears;
.super Ljava/lang/Object;
.source "GmContentProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProviderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gears"
.end annotation


# static fields
.field public static final COL_ACTIVATE:Ljava/lang/String; = "ACTIVATE"

.field public static final COL_BT_ID:Ljava/lang/String; = "BT_ID"

.field public static final COL_DEVICE_NAME:Ljava/lang/String; = "DEVICE_NAME"

.field public static final COL_ENABLE:Ljava/lang/String; = "ENABLE"

.field public static final COL_HAS_ES:Ljava/lang/String; = "HAS_ES"

.field public static final COL_ID:Ljava/lang/String; = "_ID"

.field public static final COL_ONE_NUMBER:Ljava/lang/String; = "ONE_NUMBER"

.field public static final COL_SERVICE_TYPE:Ljava/lang/String; = "SERVICE_TYPE"

.field public static final COL_WIFI_MAC:Ljava/lang/String; = "WIFI_MAC"

.field public static final TABLE_NAME:Ljava/lang/String; = "gears"

.field public static final TABLE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.mdecservice.entitlement.gmcontentprovider/gears"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProviderContract$Gears;->TABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
