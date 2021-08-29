.class Landroidx/appcompat/widget/q0;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field static final a:[I

.field static final b:[I

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2
    sput-object v1, Landroidx/appcompat/widget/q0;->a:[I

    new-array v1, v3, [I

    .line 3
    sput-object v1, Landroidx/appcompat/widget/q0;->b:[I

    new-array v0, v0, [I

    .line 4
    sput-object v0, Landroidx/appcompat/widget/q0;->c:[I

    return-void
.end method
