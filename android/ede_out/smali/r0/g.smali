.class public final Lr0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/g1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;Lda/m;Lda/d;Lx9/a;Lda/d;Lx9/l;)Lcom/airbnb/mvrx/lifecycleAwareLazy;
    .locals 0

    const-string p4, "fragment"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "viewModelProperty"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "viewModelClass"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "stateClass"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "viewModelProvider"

    invoke-static {p6, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/airbnb/mvrx/lifecycleAwareLazy;

    new-instance p3, Lr0/f;

    invoke-direct {p3, p1, p6}, Lr0/f;-><init>(Landroidx/fragment/app/Fragment;Lx9/l;)V

    invoke-direct {p2, p1, p3}, Lcom/airbnb/mvrx/lifecycleAwareLazy;-><init>(Landroidx/lifecycle/LifecycleOwner;Lr0/f;)V

    return-object p2
.end method
