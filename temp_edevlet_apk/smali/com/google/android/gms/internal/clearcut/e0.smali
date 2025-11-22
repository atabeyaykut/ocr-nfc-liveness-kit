.class public abstract Lcom/google/android/gms/internal/clearcut/e0;
.super Lcom/google/android/gms/internal/clearcut/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/clearcut/e0$e;,
        Lcom/google/android/gms/internal/clearcut/e0$d;,
        Lcom/google/android/gms/internal/clearcut/e0$b;,
        Lcom/google/android/gms/internal/clearcut/e0$a;,
        Lcom/google/android/gms/internal/clearcut/e0$c;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final c:Z


# instance fields
.field public a:Lcom/google/android/gms/internal/clearcut/f0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/clearcut/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/internal/clearcut/e0;->b:Ljava/util/logging/Logger;

    .line 12
    .line 13
    sget-boolean v0, Lcom/google/android/gms/internal/clearcut/g3;->f:Z

    .line 14
    .line 15
    sput-boolean v0, Lcom/google/android/gms/internal/clearcut/e0;->c:Z

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/w;-><init>()V

    return-void
.end method

.method public static A(ILcom/google/android/gms/internal/clearcut/x1;Lcom/google/android/gms/internal/clearcut/o2;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    check-cast p1, Lcom/google/android/gms/internal/clearcut/n;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/n;->d()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/clearcut/o2;->f(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/clearcut/n;->a(I)V

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method

.method public static D(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/e0;->I(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static G(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/e0;->I(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static H(IJ)I
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result p0

    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long/2addr p1, v2

    xor-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/e0;->I(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static I(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static K(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static L(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/e0;->X(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static M(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static N(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/e0;->Y(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static O(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/i3;->a(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/clearcut/k3; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/clearcut/x0;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->Y(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static P(II)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result p0

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v0

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/e0;->Y(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static Q(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static R(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static S(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/e0;->X(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static W(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->Y(I)I

    move-result p0

    return p0
.end method

.method public static X(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->Y(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static Y(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static h(Lcom/google/android/gms/internal/clearcut/h1;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/h1;->a()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->Y(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static q(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static r(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/e0;->O(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static x(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static y(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static z(ILcom/google/android/gms/internal/clearcut/x;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/x;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/e0;->Y(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public abstract B(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract C(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract E(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract F(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract J(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract T(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract U(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract V(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract f()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract g([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract i(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract j(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract k(ILcom/google/android/gms/internal/clearcut/x;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract l(ILcom/google/android/gms/internal/clearcut/x1;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract m(ILcom/google/android/gms/internal/clearcut/x1;Lcom/google/android/gms/internal/clearcut/o2;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract n(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final o(Ljava/lang/String;Lcom/google/android/gms/internal/clearcut/k3;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/clearcut/e0;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/google/android/gms/internal/clearcut/x0;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/e0;->U(I)V

    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/clearcut/w;->a([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/clearcut/e0$c; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/clearcut/e0$c;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/clearcut/e0$c;-><init>(Ljava/lang/RuntimeException;)V

    throw p2
.end method

.method public abstract p()I
.end method

.method public abstract s(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract t(ILcom/google/android/gms/internal/clearcut/x;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract u(ILcom/google/android/gms/internal/clearcut/x1;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract v(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract w(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
