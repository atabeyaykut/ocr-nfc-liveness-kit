.class public final Leb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leb/b$a;,
        Leb/b$b;
    }
.end annotation


# instance fields
.field public final synthetic a:Leb/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leb/a<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Leb/v;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Leb/s;


# direct methods
.method public constructor <init>(Leb/a;Ljava/util/HashMap;Leb/s;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Leb/b;->a:Leb/a;

    iput-object p2, p0, Leb/b;->b:Ljava/util/HashMap;

    iput-object p3, p0, Leb/b;->c:Leb/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Llb/f;Ljava/lang/String;)Leb/b$b;
    .locals 1

    .line 1
    const-string v0, "desc"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Llb/f;->o()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "name.asString()"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Leb/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Leb/v;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance p2, Leb/b$b;

    .line 20
    .line 21
    invoke-direct {p2, p0, p1}, Leb/b$b;-><init>(Leb/b;Leb/v;)V

    .line 22
    .line 23
    .line 24
    return-object p2
.end method

.method public final b(Llb/f;Ljava/lang/String;)Leb/b$a;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Leb/b$a;

    invoke-virtual {p1}, Llb/f;->o()Ljava/lang/String;

    move-result-object p1

    const-string v1, "name.asString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Leb/v$a;->d(Ljava/lang/String;Ljava/lang/String;)Leb/v;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Leb/b$a;-><init>(Leb/b;Leb/v;)V

    return-object v0
.end method
