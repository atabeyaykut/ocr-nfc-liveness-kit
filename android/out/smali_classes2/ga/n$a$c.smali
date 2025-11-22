.class public final Lga/n$a$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/n$a;-><init>(Lga/n;)V
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
        "Lga/h<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/n<",
            "TT;>.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/n$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/n<",
            "TT;>.a;)V"
        }
    .end annotation

    iput-object p1, p0, Lga/n$a$c;->a:Lga/n$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lga/n$a$c;->a:Lga/n$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lga/n$a;->l:[Lda/m;

    .line 7
    .line 8
    const/16 v2, 0xb

    .line 9
    .line 10
    aget-object v2, v1, v2

    .line 11
    .line 12
    iget-object v2, v0, Lga/n$a;->g:Lga/t0$a;

    .line 13
    .line 14
    invoke-virtual {v2}, Lga/t0$a;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "<get-declaredStaticMembers>(...)"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast v2, Ljava/util/Collection;

    .line 24
    .line 25
    const/16 v3, 0xd

    .line 26
    .line 27
    aget-object v1, v1, v3

    .line 28
    .line 29
    iget-object v0, v0, Lga/n$a;->i:Lga/t0$a;

    .line 30
    .line 31
    invoke-virtual {v0}, Lga/t0$a;->invoke()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "<get-inheritedStaticMembers>(...)"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    check-cast v0, Ljava/util/Collection;

    .line 41
    .line 42
    check-cast v0, Ljava/lang/Iterable;

    .line 43
    .line 44
    invoke-static {v0, v2}, Lm9/t;->m1(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method
