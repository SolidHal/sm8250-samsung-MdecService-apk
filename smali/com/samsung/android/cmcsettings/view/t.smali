.class public final synthetic Lcom/samsung/android/cmcsettings/view/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$Listener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/t;->a:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    return-void
.end method


# virtual methods
.method public final refreshBadge(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/t;->a:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->a(I)V

    return-void
.end method
