.class public final Lr0/n;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ljava/lang/Throwable;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/lifecycle/Lifecycle;

.field public final synthetic b:Lcom/airbnb/mvrx/MavericksLifecycleAwareFlowKt$startedChannel$observer$1;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Lcom/airbnb/mvrx/MavericksLifecycleAwareFlowKt$startedChannel$observer$1;)V
    .locals 0

    iput-object p1, p0, Lr0/n;->a:Landroidx/lifecycle/Lifecycle;

    iput-object p2, p0, Lr0/n;->b:Lcom/airbnb/mvrx/MavericksLifecycleAwareFlowKt$startedChannel$observer$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p1, p0, Lr0/n;->a:Landroidx/lifecycle/Lifecycle;

    .line 4
    .line 5
    iget-object v0, p0, Lr0/n;->b:Lcom/airbnb/mvrx/MavericksLifecycleAwareFlowKt$startedChannel$observer$1;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 11
    .line 12
    return-object p1
.end method
