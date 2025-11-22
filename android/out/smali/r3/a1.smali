.class public final Lr3/a1;
.super Lr3/n0;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lr3/c;


# direct methods
.method public constructor <init>(Lr3/c;I)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iput-object p1, p0, Lr3/a1;->g:Lr3/c;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lr3/n0;-><init>(Lr3/c;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final e(Lm3/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/a1;->g:Lr3/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lr3/c;->j:Lr3/c$c;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lr3/c$c;->a(Lm3/b;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lr3/a1;->g:Lr3/c;

    iget-object v0, v0, Lr3/c;->j:Lr3/c$c;

    sget-object v1, Lm3/b;->e:Lm3/b;

    invoke-interface {v0, v1}, Lr3/c$c;->a(Lm3/b;)V

    const/4 v0, 0x1

    return v0
.end method
