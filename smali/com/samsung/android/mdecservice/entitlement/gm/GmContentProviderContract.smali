.class public Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProviderContract;
.super Ljava/lang/Object;
.source "GmContentProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProviderContract$Gears;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.mdecservice.entitlement.gmcontentprovider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATE_GEARS_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS gears(_ID INTEGER PRIMARY KEY AUTOINCREMENT,DEVICE_NAME TEXT,BT_ID TEXT,WIFI_MAC TEXT,ONE_NUMBER INTEGER,SERVICE_TYPE TEXT,ACTIVATE INTEGER,ENABLE INTEGER,HAS_ES INTEGER)"

.field public static final DATABASE_NAME:Ljava/lang/String; = "samsung_mdec_gear.db"

.field public static final DATABASE_VERSION:I = 0x2

.field public static final GEARS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.mdecservice.entitlement.gmcontentprovider"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProviderContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
