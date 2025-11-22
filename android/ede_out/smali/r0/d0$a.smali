.class public final Lr0/d0$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr0/d0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lr0/p;",
        "Lr0/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr0/d0;

.field public final synthetic b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lr0/d0;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lr0/d0$a;->a:Lr0/d0;

    iput-object p2, p0, Lr0/d0$a;->b:Ljava/lang/Throwable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lr0/p;

    .line 2
    .line 3
    const-string v0, "$receiver"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lr0/d0$a;->a:Lr0/d0;

    .line 9
    .line 10
    iget-object v1, v0, Lr0/d0;->c:Lx9/p;

    .line 11
    .line 12
    new-instance v2, Lr0/i;

    .line 13
    .line 14
    iget-object v0, v0, Lr0/d0;->d:Lda/l;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lda/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lr0/b;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lr0/b;->a()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    iget-object v3, p0, Lr0/d0$a;->b:Ljava/lang/Throwable;

    .line 33
    .line 34
    invoke-direct {v2, v0, v3}, Lr0/i;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, p1, v2}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lr0/p;

    .line 42
    .line 43
    return-object p1
.end method
