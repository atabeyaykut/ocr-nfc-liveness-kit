.class public final synthetic Lfe/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;


# direct methods
.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfe/a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    .line 2
    .line 3
    const-string v0, "this$0"

    .line 4
    .line 5
    iget-object v1, p0, Lfe/a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate$1$viewLifecycleOwnerLiveDataObserver$1$1;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate$1$viewLifecycleOwnerLiveDataObserver$1$1;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method
