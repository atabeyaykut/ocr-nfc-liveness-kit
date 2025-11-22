.class public final Lga/a0$a;
.super Lga/l0$c;
.source "SourceFile"

# interfaces
.implements Lx9/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lga/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lga/l0$c<",
        "TV;>;",
        "Lx9/q;"
    }
.end annotation


# instance fields
.field public final h:Lga/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/a0<",
            "TD;TE;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/a0<",
            "TD;TE;TV;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lga/l0$c;-><init>()V

    iput-object p1, p0, Lga/a0$a;->h:Lga/a0;

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lga/a0$a;->h:Lga/a0;

    .line 2
    .line 3
    iget-object v0, v0, Lga/a0;->n:Lga/t0$b;

    .line 4
    .line 5
    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "_setter()"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Lga/a0$a;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object p1, v1, v2

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    aput-object p2, v1, p1

    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    aput-object p3, v1, p1

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lga/h;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 32
    .line 33
    return-object p1
.end method

.method public final s()Lga/l0;
    .locals 1

    iget-object v0, p0, Lga/a0$a;->h:Lga/a0;

    return-object v0
.end method
