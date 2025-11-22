.class public final Lga/c0$a$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/c0$a;-><init>(Lga/c0;)V
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
        "Lga/h<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/c0;

.field public final synthetic b:Lga/c0$a;


# direct methods
.method public constructor <init>(Lga/c0$a;Lga/c0;)V
    .locals 0

    iput-object p2, p0, Lga/c0$a$b;->a:Lga/c0;

    iput-object p1, p0, Lga/c0$a$b;->b:Lga/c0$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lga/c0$a$b;->b:Lga/c0$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lga/c0$a;->g:[Lda/m;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    aget-object v1, v1, v2

    .line 10
    .line 11
    iget-object v0, v0, Lga/c0$a;->d:Lga/t0$a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lga/t0$a;->invoke()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "<get-scope>(...)"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast v0, Lvb/i;

    .line 23
    .line 24
    iget-object v1, p0, Lga/c0$a$b;->a:Lga/c0;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lga/s;->q(Lvb/i;I)Ljava/util/Collection;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
