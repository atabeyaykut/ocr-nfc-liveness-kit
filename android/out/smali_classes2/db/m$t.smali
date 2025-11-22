.class public final Ldb/m$t;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldb/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ldb/u$a$a;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldb/m$t;->a:Ljava/lang/String;

    iput-object p2, p0, Ldb/m$t;->b:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Ldb/u$a$a;

    .line 2
    .line 3
    const-string v0, "$this$function"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v1, v0, [Ldb/h;

    .line 10
    .line 11
    sget-object v2, Ldb/m;->b:Ldb/h;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v2, v1, v3

    .line 15
    .line 16
    iget-object v4, p0, Ldb/m$t;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v4, v1}, Ldb/u$a$a;->a(Ljava/lang/String;[Ldb/h;)V

    .line 19
    .line 20
    .line 21
    new-array v1, v0, [Ldb/h;

    .line 22
    .line 23
    sget-object v5, Ldb/m;->c:Ldb/h;

    .line 24
    .line 25
    aput-object v5, v1, v3

    .line 26
    .line 27
    invoke-virtual {p1, v4, v1}, Ldb/u$a$a;->a(Ljava/lang/String;[Ldb/h;)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    new-array v1, v1, [Ldb/h;

    .line 32
    .line 33
    aput-object v2, v1, v3

    .line 34
    .line 35
    aput-object v5, v1, v0

    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    aput-object v5, v1, v2

    .line 39
    .line 40
    sget-object v2, Ldb/m;->a:Ldb/h;

    .line 41
    .line 42
    const/4 v5, 0x3

    .line 43
    aput-object v2, v1, v5

    .line 44
    .line 45
    iget-object v5, p0, Ldb/m$t;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, v5, v1}, Ldb/u$a$a;->a(Ljava/lang/String;[Ldb/h;)V

    .line 48
    .line 49
    .line 50
    new-array v0, v0, [Ldb/h;

    .line 51
    .line 52
    aput-object v2, v0, v3

    .line 53
    .line 54
    invoke-virtual {p1, v4, v0}, Ldb/u$a$a;->b(Ljava/lang/String;[Ldb/h;)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 58
    .line 59
    return-object p1
.end method
