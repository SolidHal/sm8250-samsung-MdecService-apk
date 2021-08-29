.class public final synthetic Lcom/samsung/android/cmcsettings/view/s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/samsung/android/cmcsettings/view/s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/cmcsettings/view/s;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/s;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcsettings/view/s;->a:Lcom/samsung/android/cmcsettings/view/s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->b(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
