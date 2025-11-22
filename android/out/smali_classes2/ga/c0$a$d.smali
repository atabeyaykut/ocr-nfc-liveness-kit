.class public final Lga/c0$a$d;
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
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/c0$a;

.field public final synthetic b:Lga/c0;


# direct methods
.method public constructor <init>(Lga/c0$a;Lga/c0;)V
    .locals 0

    iput-object p1, p0, Lga/c0$a$d;->a:Lga/c0$a;

    iput-object p2, p0, Lga/c0$a$d;->b:Lga/c0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lga/c0$a$d;->a:Lga/c0$a;

    .line 2
    .line 3
    invoke-static {v0}, Lga/c0$a;->a(Lga/c0$a;)Lra/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, v0, Lra/e;->b:Lfb/a;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v4, Lfb/a$a;->h:Lfb/a$a;

    .line 17
    .line 18
    iget-object v5, v0, Lfb/a;->a:Lfb/a$a;

    .line 19
    .line 20
    if-ne v5, v4, :cond_0

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v4, 0x0

    .line 25
    :goto_0
    if-eqz v4, :cond_1

    .line 26
    .line 27
    iget-object v0, v0, Lfb/a;->f:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-object v0, v3

    .line 31
    :goto_1
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-lez v4, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/4 v1, 0x0

    .line 41
    :goto_2
    if-eqz v1, :cond_3

    .line 42
    .line 43
    iget-object v1, p0, Lga/c0$a$d;->b:Lga/c0;

    .line 44
    .line 45
    iget-object v1, v1, Lga/c0;->b:Ljava/lang/Class;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/16 v2, 0x2f

    .line 52
    .line 53
    const/16 v3, 0x2e

    .line 54
    .line 55
    invoke-static {v0, v2, v3}, Lmc/j;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    :cond_3
    return-object v3
.end method
