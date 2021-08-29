.class public final synthetic Lcom/samsung/android/cmcsettings/services/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;


# static fields
.field public static final synthetic b:Lcom/samsung/android/cmcsettings/services/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/cmcsettings/services/b;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/services/b;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcsettings/services/b;->b:Lcom/samsung/android/cmcsettings/services/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdatePhoneNumber(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->b(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void
.end method
