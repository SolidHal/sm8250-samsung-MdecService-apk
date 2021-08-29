.class public final synthetic Lcom/samsung/android/cmcsettings/view/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/samsung/android/cmcsettings/view/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/cmcsettings/view/a;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/a;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcsettings/view/a;->a:Lcom/samsung/android/cmcsettings/view/a;

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

    check-cast p1, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
