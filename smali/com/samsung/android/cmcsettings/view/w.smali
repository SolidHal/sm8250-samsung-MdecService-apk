.class public final synthetic Lcom/samsung/android/cmcsettings/view/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/samsung/android/cmcsettings/view/w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/cmcsettings/view/w;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/w;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcsettings/view/w;->a:Lcom/samsung/android/cmcsettings/view/w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
