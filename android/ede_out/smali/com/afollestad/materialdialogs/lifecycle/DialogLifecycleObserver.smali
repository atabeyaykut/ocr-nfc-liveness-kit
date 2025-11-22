.class public final Lcom/afollestad/materialdialogs/lifecycle/DialogLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0007J\u0008\u0010\u0004\u001a\u00020\u0002H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/afollestad/materialdialogs/lifecycle/DialogLifecycleObserver;",
        "Landroidx/lifecycle/LifecycleObserver;",
        "Ll9/m;",
        "onDestroy",
        "onPause",
        "lifecycle"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lx9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/a<",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afollestad/materialdialogs/lifecycle/DialogLifecycleObserver;->a:Lx9/a;

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/afollestad/materialdialogs/lifecycle/DialogLifecycleObserver;->a:Lx9/a;

    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/afollestad/materialdialogs/lifecycle/DialogLifecycleObserver;->a:Lx9/a;

    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    return-void
.end method
