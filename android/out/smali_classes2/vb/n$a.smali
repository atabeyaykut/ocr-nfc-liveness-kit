.class public final Lvb/n$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvb/n;-><init>(Lvb/i;Lcc/p1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/Collection<",
        "+",
        "Lma/j;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lvb/n;


# direct methods
.method public constructor <init>(Lvb/n;)V
    .locals 0

    iput-object p1, p0, Lvb/n$a;->a:Lvb/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lvb/n$a;->a:Lvb/n;

    .line 2
    .line 3
    iget-object v1, v0, Lvb/n;->b:Lvb/i;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-static {v1, v3, v2}, Lvb/l$a;->a(Lvb/l;Lvb/d;I)Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lvb/n;->h(Ljava/util/Collection;)Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
