.class public final Lvc/g;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/List<",
        "+",
        "Ljava/security/cert/Certificate;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lrc/f;

.field public final synthetic b:Lrc/p;

.field public final synthetic c:Lrc/a;


# direct methods
.method public constructor <init>(Lrc/f;Lrc/p;Lrc/a;)V
    .locals 0

    iput-object p1, p0, Lvc/g;->a:Lrc/f;

    iput-object p2, p0, Lvc/g;->b:Lrc/p;

    iput-object p3, p0, Lvc/g;->c:Lrc/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lvc/g;->a:Lrc/f;

    .line 2
    .line 3
    iget-object v0, v0, Lrc/f;->b:Lcd/c;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lvc/g;->b:Lrc/p;

    .line 9
    .line 10
    invoke-virtual {v1}, Lrc/p;->a()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lvc/g;->c:Lrc/a;

    .line 15
    .line 16
    iget-object v2, v2, Lrc/a;->a:Lrc/r;

    .line 17
    .line 18
    iget-object v2, v2, Lrc/r;->e:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Lcd/c;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
