.class public final Le/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Le/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Le/a;->a:Ljava/util/List;

    .line 5
    .line 6
    check-cast v0, Ljava/util/Collection;

    .line 7
    .line 8
    invoke-static {v0}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Le/a$a;->a:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v0, p1, Le/a;->b:Ljava/util/List;

    .line 15
    .line 16
    check-cast v0, Ljava/util/Collection;

    .line 17
    .line 18
    invoke-static {v0}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Le/a$a;->b:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v0, p1, Le/a;->c:Ljava/util/List;

    .line 25
    .line 26
    check-cast v0, Ljava/util/Collection;

    .line 27
    .line 28
    invoke-static {v0}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Le/a$a;->c:Ljava/util/ArrayList;

    .line 33
    .line 34
    iget-object v0, p1, Le/a;->d:Ljava/util/List;

    .line 35
    .line 36
    check-cast v0, Ljava/util/Collection;

    .line 37
    .line 38
    invoke-static {v0}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Le/a$a;->d:Ljava/util/ArrayList;

    .line 43
    .line 44
    iget-object p1, p1, Le/a;->e:Ljava/util/List;

    .line 45
    .line 46
    check-cast p1, Ljava/util/Collection;

    .line 47
    .line 48
    invoke-static {p1}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Le/a$a;->e:Ljava/util/ArrayList;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a(Lj/h$a;Ljava/lang/Class;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a$a;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    new-instance v1, Ll9/g;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(Lm/d;Ljava/lang/Class;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a$a;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    new-instance v1, Ll9/g;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
