.class public Lio/realm/internal/TableQuery;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/i;


# static fields
.field public static final e:J


# instance fields
.field public final a:Lio/realm/internal/Table;

.field public final b:J

.field public final c:Lio/realm/j0;

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/realm/internal/TableQuery;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/TableQuery;->e:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/h;Lio/realm/internal/Table;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/realm/j0;

    invoke-direct {v0}, Lio/realm/j0;-><init>()V

    iput-object v0, p0, Lio/realm/internal/TableQuery;->c:Lio/realm/j0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->d:Z

    iput-object p2, p0, Lio/realm/internal/TableQuery;->a:Lio/realm/internal/Table;

    iput-wide p3, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-virtual {p1, p0}, Lio/realm/internal/h;->a(Lio/realm/internal/i;)V

    return-void
.end method

.method private native nativeFind(J)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private native nativeMaximumDecimal128(JJ)[J
.end method

.method private native nativeMaximumDouble(JJ)Ljava/lang/Double;
.end method

.method private native nativeMaximumFloat(JJ)Ljava/lang/Float;
.end method

.method private native nativeMaximumInt(JJ)Ljava/lang/Long;
.end method

.method private native nativeOr(J)V
.end method

.method private native nativeRawDescriptor(JLjava/lang/String;J)V
.end method

.method private native nativeRawPredicate(JLjava/lang/String;[JJ)V
.end method

.method private native nativeValidateQuery(J)Ljava/lang/String;
.end method


# virtual methods
.method public final a(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/h0;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, " "

    .line 7
    .line 8
    const-string v2, "\\ "

    .line 9
    .line 10
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p2, " = $0"

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const/4 v0, 0x1

    .line 27
    new-array v1, v0, [Lio/realm/h0;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object p3, v1, v2

    .line 31
    .line 32
    iget-object p3, p0, Lio/realm/internal/TableQuery;->c:Lio/realm/j0;

    .line 33
    .line 34
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-array p3, v0, [J

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    :goto_0
    if-ge v3, v0, :cond_0

    .line 41
    .line 42
    :try_start_0
    aget-object v4, v1, v3

    .line 43
    .line 44
    invoke-virtual {v4}, Lio/realm/h0;->a()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    aput-wide v4, p3, v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p1

    .line 54
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string p3, "Unmanaged Realm objects are not valid query arguments"

    .line 57
    .line 58
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw p2

    .line 62
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/realm/internal/TableQuery;->i(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[J)V

    .line 63
    .line 64
    .line 65
    iput-boolean v2, p0, Lio/realm/internal/TableQuery;->d:Z

    .line 66
    .line 67
    return-void
.end method

.method public final b()J
    .locals 2

    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->j()V

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeFind(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(J)Lorg/bson/types/Decimal128;
    .locals 4

    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->j()V

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeMaximumDecimal128(JJ)[J

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    aget-wide v0, p1, p2

    const/4 p2, 0x0

    aget-wide v2, p1, p2

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(J)Ljava/lang/Double;
    .locals 2

    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->j()V

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeMaximumDouble(JJ)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final e(J)Ljava/lang/Float;
    .locals 2

    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->j()V

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeMaximumFloat(JJ)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final f(J)Ljava/lang/Long;
    .locals 2

    invoke-virtual {p0}, Lio/realm/internal/TableQuery;->j()V

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->nativeMaximumInt(JJ)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final g()V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeOr(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->d:Z

    return-void
.end method

.method public final getNativeFinalizerPtr()J
    .locals 2

    sget-wide v0, Lio/realm/internal/TableQuery;->e:J

    return-wide v0
.end method

.method public final getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->b:J

    return-wide v0
.end method

.method public final h(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;)V
    .locals 6

    iget-wide v1, p0, Lio/realm/internal/TableQuery;->b:J

    if-eqz p1, :cond_0

    iget-wide v3, p1, Lio/realm/internal/objectstore/OsKeyPathMapping;->a:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    move-wide v4, v3

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/TableQuery;->nativeRawDescriptor(JLjava/lang/String;J)V

    return-void
.end method

.method public final varargs i(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[J)V
    .locals 7

    iget-wide v1, p0, Lio/realm/internal/TableQuery;->b:J

    if-eqz p1, :cond_0

    iget-wide v3, p1, Lio/realm/internal/objectstore/OsKeyPathMapping;->a:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    move-wide v5, v3

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/TableQuery;->nativeRawPredicate(JLjava/lang/String;[JJ)V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-boolean v0, p0, Lio/realm/internal/TableQuery;->d:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lio/realm/internal/TableQuery;->b:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/TableQuery;->nativeValidateQuery(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/TableQuery;->d:Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
