.class public final synthetic Lcom/samsung/android/cmcsettings/view/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/samsung/android/cmcsettings/view/u;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/cmcsettings/view/u;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/u;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcsettings/view/u;->a:Lcom/samsung/android/cmcsettings/view/u;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
