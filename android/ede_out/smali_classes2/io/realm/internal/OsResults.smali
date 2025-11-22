.class public Lio/realm/internal/OsResults;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/i;
.implements Lio/realm/internal/ObservableCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsResults$b;,
        Lio/realm/internal/OsResults$a;
    }
.end annotation


# static fields
.field public static final g:J

.field public static final synthetic h:I


# instance fields
.field public final a:J

.field public final b:Lio/realm/internal/OsSharedRealm;

.field public final c:Lio/realm/internal/Table;

.field public d:Z

.field public e:Z

.field public final f:Lio/realm/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/k<",
            "Lio/realm/internal/ObservableCollection$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/realm/internal/OsResults;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsResults;->g:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/realm/internal/OsResults;->e:Z

    .line 6
    .line 7
    new-instance v1, Lio/realm/internal/k;

    .line 8
    .line 9
    invoke-direct {v1}, Lio/realm/internal/k;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lio/realm/internal/OsResults;->f:Lio/realm/internal/k;

    .line 13
    .line 14
    iput-object p1, p0, Lio/realm/internal/OsResults;->b:Lio/realm/internal/OsSharedRealm;

    .line 15
    .line 16
    iget-object p1, p1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/h;

    .line 17
    .line 18
    iput-object p2, p0, Lio/realm/internal/OsResults;->c:Lio/realm/internal/Table;

    .line 19
    .line 20
    iput-wide p3, p0, Lio/realm/internal/OsResults;->a:J

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lio/realm/internal/h;->a(Lio/realm/internal/i;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p3, p4}, Lio/realm/internal/OsResults;->nativeGetMode(J)B

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 p2, 0x4

    .line 30
    const/4 p3, 0x1

    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    const/4 p4, 0x2

    .line 34
    if-eq p1, p3, :cond_4

    .line 35
    .line 36
    const/4 p3, 0x3

    .line 37
    if-eq p1, p4, :cond_2

    .line 38
    .line 39
    if-eq p1, p3, :cond_1

    .line 40
    .line 41
    if-ne p1, p2, :cond_0

    .line 42
    .line 43
    const/4 p4, 0x5

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const-string p3, "Invalid value: "

    .line 48
    .line 49
    invoke-static {p3, p1}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p2

    .line 57
    :cond_1
    const/4 p4, 0x4

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 p4, 0x3

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const/4 p4, 0x1

    .line 62
    :cond_4
    :goto_0
    if-eq p4, p2, :cond_5

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    :cond_5
    iput-boolean v0, p0, Lio/realm/internal/OsResults;->d:Z

    .line 66
    .line 67
    return-void
.end method

.method public static native nativeCreateResults(JJ)J
.end method

.method private static native nativeCreateSnapshot(J)J
.end method

.method private static native nativeEvaluateQueryIfNeeded(JZ)V
.end method

.method private static native nativeFreeze(JJ)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetMode(J)B
.end method

.method private static native nativeGetRow(JI)J
.end method

.method private static native nativeIsValid(J)Z
.end method

.method private static native nativeSize(J)J
.end method


# virtual methods
.method public final a()Lio/realm/internal/OsResults;
    .locals 5

    iget-boolean v0, p0, Lio/realm/internal/OsResults;->e:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lio/realm/internal/OsResults;

    iget-wide v1, p0, Lio/realm/internal/OsResults;->a:J

    invoke-static {v1, v2}, Lio/realm/internal/OsResults;->nativeCreateSnapshot(J)J

    move-result-wide v1

    iget-object v3, p0, Lio/realm/internal/OsResults;->b:Lio/realm/internal/OsSharedRealm;

    iget-object v4, p0, Lio/realm/internal/OsResults;->c:Lio/realm/internal/Table;

    invoke-direct {v0, v3, v4, v1, v2}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/realm/internal/OsResults;->e:Z

    return-object v0
.end method

.method public final b(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/OsResults;
    .locals 6

    .line 1
    new-instance v0, Lio/realm/internal/OsResults;

    .line 2
    .line 3
    iget-object v1, p0, Lio/realm/internal/OsResults;->c:Lio/realm/internal/Table;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lio/realm/internal/Table;->e(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/Table;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-wide v2, p0, Lio/realm/internal/OsResults;->a:J

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    invoke-static {v2, v3, v4, v5}, Lio/realm/internal/OsResults;->nativeFreeze(JJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-direct {v0, p1, v1, v2, v3}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    .line 20
    .line 21
    .line 22
    iget-boolean p1, p0, Lio/realm/internal/OsResults;->d:Z

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lio/realm/internal/OsResults;->e()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object v0
.end method

.method public final c(I)Lio/realm/internal/UncheckedRow;
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsResults;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1}, Lio/realm/internal/OsResults;->nativeGetRow(JI)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p1, p0, Lio/realm/internal/OsResults;->c:Lio/realm/internal/Table;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Lio/realm/internal/UncheckedRow;

    .line 13
    .line 14
    iget-object v3, p1, Lio/realm/internal/Table;->b:Lio/realm/internal/h;

    .line 15
    .line 16
    invoke-direct {v2, v3, p1, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/h;Lio/realm/internal/Table;J)V

    .line 17
    .line 18
    .line 19
    return-object v2
.end method

.method public final d()Z
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsResults;->a:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeIsValid(J)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 4

    const-string v0, "Illegal Argument: "

    iget-boolean v1, p0, Lio/realm/internal/OsResults;->d:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-wide v1, p0, Lio/realm/internal/OsResults;->a:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lio/realm/internal/OsResults;->nativeEvaluateQueryIfNeeded(JZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cannot sort on a collection property"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/OsResults;->notifyChangeListeners(J)V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsResults;->a:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNativeFinalizerPtr()J
    .locals 2

    sget-wide v0, Lio/realm/internal/OsResults;->g:J

    return-wide v0
.end method

.method public final getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsResults;->a:J

    return-wide v0
.end method

.method public final notifyChangeListeners(J)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    cmp-long v3, p1, v0

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    new-instance p1, Lio/realm/internal/d;

    .line 9
    .line 10
    invoke-direct {p1}, Lio/realm/internal/d;-><init>()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lio/realm/internal/OsCollectionChangeSet;

    .line 15
    .line 16
    iget-boolean v1, p0, Lio/realm/internal/OsResults;->d:Z

    .line 17
    .line 18
    xor-int/2addr v1, v2

    .line 19
    invoke-direct {v0, p1, p2, v1}, Lio/realm/internal/OsCollectionChangeSet;-><init>(JZ)V

    .line 20
    .line 21
    .line 22
    move-object p1, v0

    .line 23
    :goto_0
    invoke-virtual {p1}, Lio/realm/internal/OsCollectionChangeSet;->e()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    iget-boolean p2, p0, Lio/realm/internal/OsResults;->d:Z

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iput-boolean v2, p0, Lio/realm/internal/OsResults;->d:Z

    .line 35
    .line 36
    new-instance p2, Lio/realm/internal/ObservableCollection$a;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Lio/realm/internal/ObservableCollection$a;-><init>(Lio/realm/internal/OsCollectionChangeSet;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lio/realm/internal/OsResults;->f:Lio/realm/internal/k;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lio/realm/internal/k;->b(Lio/realm/internal/k$a;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
