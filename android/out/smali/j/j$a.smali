.class public final Lj/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj/h$a<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lrc/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Lh/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public constructor <init>(Ll9/j;Ll9/j;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/j$a;->a:Ll9/e;

    iput-object p2, p0, Lj/j$a;->b:Ll9/e;

    iput-boolean p3, p0, Lj/j$a;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lp/k;)Lj/h;
    .locals 7

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "http"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "https"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 31
    :goto_1
    if-nez v0, :cond_2

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    new-instance v6, Lj/j;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v3, p0, Lj/j$a;->a:Ll9/e;

    .line 42
    .line 43
    iget-object v4, p0, Lj/j$a;->b:Ll9/e;

    .line 44
    .line 45
    iget-boolean v5, p0, Lj/j$a;->c:Z

    .line 46
    .line 47
    move-object v0, v6

    .line 48
    move-object v2, p2

    .line 49
    invoke-direct/range {v0 .. v5}, Lj/j;-><init>(Ljava/lang/String;Lp/k;Ll9/e;Ll9/e;Z)V

    .line 50
    .line 51
    .line 52
    move-object p1, v6

    .line 53
    :goto_2
    return-object p1
.end method
