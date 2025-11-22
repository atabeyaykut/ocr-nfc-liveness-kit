.class public final Lyb/k0$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/k0;->d(Lgb/p;Z)Lcc/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/List<",
        "+",
        "Lna/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lyb/k0;

.field public final synthetic b:Lgb/p;


# direct methods
.method public constructor <init>(Lgb/p;Lyb/k0;)V
    .locals 0

    iput-object p2, p0, Lyb/k0$b;->a:Lyb/k0;

    iput-object p1, p0, Lyb/k0$b;->b:Lgb/p;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lyb/k0$b;->a:Lyb/k0;

    .line 2
    .line 3
    iget-object v0, v0, Lyb/k0;->a:Lyb/n;

    .line 4
    .line 5
    iget-object v1, v0, Lyb/n;->a:Lyb/l;

    .line 6
    .line 7
    iget-object v1, v1, Lyb/l;->e:Lyb/d;

    .line 8
    .line 9
    iget-object v0, v0, Lyb/n;->b:Lib/c;

    .line 10
    .line 11
    iget-object v2, p0, Lyb/k0$b;->b:Lgb/p;

    .line 12
    .line 13
    invoke-interface {v1, v2, v0}, Lyb/g;->i(Lgb/p;Lib/c;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
