.class public final Lpa/s$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/s$a;-><init>(Lpa/s;Lbc/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx9/l<",
        "Llb/f;",
        "Ljava/util/Collection<",
        "+",
        "Lma/q0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lpa/s$a;


# direct methods
.method public constructor <init>(Lpa/s$a;)V
    .locals 0

    iput-object p1, p0, Lpa/s$a$a;->a:Lpa/s$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Llb/f;

    .line 2
    .line 3
    iget-object v0, p0, Lpa/s$a$a;->a:Lpa/s$a;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lpa/s$a;->i()Lvb/i;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lua/c;->f:Lua/c;

    .line 12
    .line 13
    invoke-interface {v1, p1, v2}, Lvb/i;->c(Llb/f;Lua/c;)Ljava/util/Collection;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1, p1}, Lpa/s$a;->j(Ljava/util/Collection;Llb/f;)Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/16 p1, 0x8

    .line 26
    .line 27
    invoke-static {p1}, Lpa/s$a;->h(I)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    throw p1
.end method
