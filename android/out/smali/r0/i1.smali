.class public final Lr0/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/airbnb/mvrx/lifecycleAwareLazy;


# direct methods
.method public constructor <init>(Lcom/airbnb/mvrx/lifecycleAwareLazy;)V
    .locals 0

    iput-object p1, p0, Lr0/i1;->a:Lcom/airbnb/mvrx/lifecycleAwareLazy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr0/i1;->a:Lcom/airbnb/mvrx/lifecycleAwareLazy;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/airbnb/mvrx/lifecycleAwareLazy;->d:Landroidx/lifecycle/LifecycleOwner;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/airbnb/mvrx/lifecycleAwareLazy;->a(Landroidx/lifecycle/LifecycleOwner;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
