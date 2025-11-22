.class public final Lec/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/c1;


# instance fields
.field public final a:Lec/h;

.field public final b:[Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Lec/h;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "formatParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lec/g;->a:Lec/h;

    iput-object p2, p0, Lec/g;->b:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    iget-object p1, p1, Lec/h;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(this, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[Error type: %s]"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lec/g;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    sget-object v0, Lm9/v;->a:Lm9/v;

    return-object v0
.end method

.method public final l()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation

    sget-object v0, Lm9/v;->a:Lm9/v;

    return-object v0
.end method

.method public final m()Lja/k;
    .locals 1

    .line 1
    sget-object v0, Lja/d;->f:Lja/d;

    .line 2
    .line 3
    sget-object v0, Lja/d;->f:Lja/d;

    .line 4
    .line 5
    return-object v0
.end method

.method public final n()Lma/g;
    .locals 1

    .line 1
    sget-object v0, Lec/i;->a:Lec/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lec/i;->c:Lec/a;

    .line 7
    .line 8
    return-object v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lec/g;->c:Ljava/lang/String;

    return-object v0
.end method
