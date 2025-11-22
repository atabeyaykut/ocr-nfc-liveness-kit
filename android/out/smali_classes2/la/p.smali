.class public final Lla/p;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lvb/i;",
        "Ljava/util/Collection<",
        "+",
        "Lma/q0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Llb/f;


# direct methods
.method public constructor <init>(Llb/f;)V
    .locals 0

    iput-object p1, p0, Lla/p;->a:Llb/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lvb/i;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lua/c;->a:Lua/c;

    .line 9
    .line 10
    iget-object v1, p0, Lla/p;->a:Llb/f;

    .line 11
    .line 12
    invoke-interface {p1, v1, v0}, Lvb/i;->c(Llb/f;Lua/c;)Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
