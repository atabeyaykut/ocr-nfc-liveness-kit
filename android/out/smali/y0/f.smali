.class public final Ly0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly0/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ly0/k;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ly0/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/f$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ly0/f$a;

    invoke-direct {v0}, Ly0/f$a;-><init>()V

    iput-object v0, p0, Ly0/f;->a:Ly0/f$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ly0/f;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ly0/k;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/f;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ly0/f$a;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ly0/f$a;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Ly0/f$a;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p1}, Ly0/k;->a()V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p1, v1, Ly0/f$a;->d:Ly0/f$a;

    .line 24
    .line 25
    iget-object v0, v1, Ly0/f$a;->c:Ly0/f$a;

    .line 26
    .line 27
    iput-object v0, p1, Ly0/f$a;->c:Ly0/f$a;

    .line 28
    .line 29
    iget-object v0, v1, Ly0/f$a;->c:Ly0/f$a;

    .line 30
    .line 31
    iput-object p1, v0, Ly0/f$a;->d:Ly0/f$a;

    .line 32
    .line 33
    iget-object p1, p0, Ly0/f;->a:Ly0/f$a;

    .line 34
    .line 35
    iput-object p1, v1, Ly0/f$a;->d:Ly0/f$a;

    .line 36
    .line 37
    iget-object p1, p1, Ly0/f$a;->c:Ly0/f$a;

    .line 38
    .line 39
    iput-object p1, v1, Ly0/f$a;->c:Ly0/f$a;

    .line 40
    .line 41
    iput-object v1, p1, Ly0/f$a;->d:Ly0/f$a;

    .line 42
    .line 43
    iget-object p1, v1, Ly0/f$a;->d:Ly0/f$a;

    .line 44
    .line 45
    iput-object v1, p1, Ly0/f$a;->c:Ly0/f$a;

    .line 46
    .line 47
    iget-object p1, v1, Ly0/f$a;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 p1, 0x0

    .line 57
    :goto_1
    if-lez p1, :cond_2

    .line 58
    .line 59
    iget-object v0, v1, Ly0/f$a;->b:Ljava/util/ArrayList;

    .line 60
    .line 61
    add-int/lit8 p1, p1, -0x1

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const/4 p1, 0x0

    .line 69
    :goto_2
    return-object p1
.end method

.method public final b(Ly0/k;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/f;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ly0/f$a;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ly0/f$a;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Ly0/f$a;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, v1, Ly0/f$a;->d:Ly0/f$a;

    .line 17
    .line 18
    iget-object v3, v1, Ly0/f$a;->c:Ly0/f$a;

    .line 19
    .line 20
    iput-object v3, v2, Ly0/f$a;->c:Ly0/f$a;

    .line 21
    .line 22
    iget-object v3, v1, Ly0/f$a;->c:Ly0/f$a;

    .line 23
    .line 24
    iput-object v2, v3, Ly0/f$a;->d:Ly0/f$a;

    .line 25
    .line 26
    iget-object v2, p0, Ly0/f;->a:Ly0/f$a;

    .line 27
    .line 28
    iget-object v3, v2, Ly0/f$a;->d:Ly0/f$a;

    .line 29
    .line 30
    iput-object v3, v1, Ly0/f$a;->d:Ly0/f$a;

    .line 31
    .line 32
    iput-object v2, v1, Ly0/f$a;->c:Ly0/f$a;

    .line 33
    .line 34
    iput-object v1, v2, Ly0/f$a;->d:Ly0/f$a;

    .line 35
    .line 36
    iget-object v2, v1, Ly0/f$a;->d:Ly0/f$a;

    .line 37
    .line 38
    iput-object v1, v2, Ly0/f$a;->c:Ly0/f$a;

    .line 39
    .line 40
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {p1}, Ly0/k;->a()V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object p1, v1, Ly0/f$a;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    new-instance p1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, v1, Ly0/f$a;->b:Ljava/util/ArrayList;

    .line 57
    .line 58
    :cond_1
    iget-object p1, v1, Ly0/f$a;->b:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly0/f;->a:Ly0/f$a;

    .line 2
    .line 3
    iget-object v1, v0, Ly0/f$a;->d:Ly0/f$a;

    .line 4
    .line 5
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_3

    .line 11
    .line 12
    iget-object v2, v1, Ly0/f$a;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_1
    if-lez v2, :cond_1

    .line 23
    .line 24
    iget-object v3, v1, Ly0/f$a;->b:Ljava/util/ArrayList;

    .line 25
    .line 26
    add-int/lit8 v2, v2, -0x1

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :cond_1
    if-eqz v3, :cond_2

    .line 33
    .line 34
    return-object v3

    .line 35
    :cond_2
    iget-object v2, v1, Ly0/f$a;->d:Ly0/f$a;

    .line 36
    .line 37
    iget-object v3, v1, Ly0/f$a;->c:Ly0/f$a;

    .line 38
    .line 39
    iput-object v3, v2, Ly0/f$a;->c:Ly0/f$a;

    .line 40
    .line 41
    iget-object v3, v1, Ly0/f$a;->c:Ly0/f$a;

    .line 42
    .line 43
    iput-object v2, v3, Ly0/f$a;->d:Ly0/f$a;

    .line 44
    .line 45
    iget-object v2, p0, Ly0/f;->b:Ljava/util/HashMap;

    .line 46
    .line 47
    iget-object v3, v1, Ly0/f$a;->a:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    check-cast v3, Ly0/k;

    .line 53
    .line 54
    invoke-interface {v3}, Ly0/k;->a()V

    .line 55
    .line 56
    .line 57
    iget-object v1, v1, Ly0/f$a;->d:Ly0/f$a;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    return-object v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GroupedLinkedMap( "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ly0/f;->a:Ly0/f$a;

    .line 9
    .line 10
    iget-object v2, v1, Ly0/f$a;->c:Ly0/f$a;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-nez v5, :cond_1

    .line 19
    .line 20
    const/16 v4, 0x7b

    .line 21
    .line 22
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v4, v2, Ly0/f$a;->a:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v4, 0x3a

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v4, v2, Ly0/f$a;->b:Ljava/util/ArrayList;

    .line 36
    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const/4 v4, 0x0

    .line 45
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v4, "}, "

    .line 49
    .line 50
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v2, v2, Ly0/f$a;->c:Ly0/f$a;

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    if-eqz v4, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/lit8 v1, v1, -0x2

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    :cond_2
    const-string v1, " )"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0
.end method
