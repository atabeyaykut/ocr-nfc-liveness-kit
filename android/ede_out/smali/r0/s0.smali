.class public final Lr0/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;


# instance fields
.field public final synthetic a:Lr0/v0;

.field public final synthetic b:Lr0/f1;


# direct methods
.method public constructor <init>(Lr0/v0;Lr0/f1;)V
    .locals 0

    iput-object p1, p0, Lr0/s0;->a:Lr0/v0;

    iput-object p2, p0, Lr0/s0;->b:Lr0/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lr0/s0;->a:Lr0/v0;

    .line 2
    .line 3
    iget-object v0, v0, Lr0/v0;->a:Lr0/z;

    .line 4
    .line 5
    iget-object v1, p0, Lr0/s0;->b:Lr0/f1;

    .line 6
    .line 7
    invoke-virtual {v1}, Lr0/f1;->a()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lr0/t0;

    .line 12
    .line 13
    invoke-direct {v2, v1}, Lr0/t0;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v2}, Lx5/a;->u(Lr0/z;Lx9/l;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/os/Bundle;

    .line 21
    .line 22
    return-object v0
.end method
