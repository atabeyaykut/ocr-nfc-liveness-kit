.class public final Lcom/esafirm/imagepicker/features/ContentObserverTrigger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esafirm/imagepicker/features/ContentObserverTrigger$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/esafirm/imagepicker/features/ContentObserverTrigger;",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "imagepicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Lx9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/a<",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/os/Handler;

.field public d:Lt1/a;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lt1/g$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ContentObserverTrigger;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/esafirm/imagepicker/features/ContentObserverTrigger;->b:Lx9/a;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "event"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/esafirm/imagepicker/features/ContentObserverTrigger$a;->a:[I

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    aget p1, p1, p2

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ContentObserverTrigger;->a:Landroid/content/ContentResolver;

    .line 21
    .line 22
    if-eq p1, p2, :cond_3

    .line 23
    .line 24
    const/4 p2, 0x2

    .line 25
    if-eq p1, p2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/esafirm/imagepicker/features/ContentObserverTrigger;->d:Lt1/a;

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lcom/esafirm/imagepicker/features/ContentObserverTrigger;->d:Lt1/a;

    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/esafirm/imagepicker/features/ContentObserverTrigger;->c:Landroid/os/Handler;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iput-object p2, p0, Lcom/esafirm/imagepicker/features/ContentObserverTrigger;->c:Landroid/os/Handler;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    iget-object p1, p0, Lcom/esafirm/imagepicker/features/ContentObserverTrigger;->c:Landroid/os/Handler;

    .line 49
    .line 50
    if-nez p1, :cond_4

    .line 51
    .line 52
    new-instance p1, Landroid/os/Handler;

    .line 53
    .line 54
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ContentObserverTrigger;->c:Landroid/os/Handler;

    .line 58
    .line 59
    :cond_4
    iget-object p1, p0, Lcom/esafirm/imagepicker/features/ContentObserverTrigger;->c:Landroid/os/Handler;

    .line 60
    .line 61
    new-instance p2, Lt1/a;

    .line 62
    .line 63
    invoke-direct {p2, p0, p1}, Lt1/a;-><init>(Lcom/esafirm/imagepicker/features/ContentObserverTrigger;Landroid/os/Handler;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lcom/esafirm/imagepicker/features/ContentObserverTrigger;->d:Lt1/a;

    .line 67
    .line 68
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0, p1, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method
