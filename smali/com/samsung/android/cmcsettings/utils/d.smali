.class public final synthetic Lcom/samsung/android/cmcsettings/utils/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/samsung/android/cmcsettings/utils/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/cmcsettings/utils/d;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/utils/d;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/d;->a:Lcom/samsung/android/cmcsettings/utils/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_id()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
