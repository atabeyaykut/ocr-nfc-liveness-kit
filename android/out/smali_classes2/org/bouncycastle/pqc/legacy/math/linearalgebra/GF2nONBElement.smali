.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
.super Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
.source "SourceFile"


# static fields
.field private static final MAXLONG:I = 0x40

.field private static final mBitmask:[J

.field private static final mIBY64:[I

.field private static final mMaxmask:[J


# instance fields
.field private mBit:I

.field private mLength:I

.field private mPol:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x40

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    const/16 v0, 0x180

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    return-void

    :array_0
    .array-data 8
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000
        0x80000000L
        0x100000000L
        0x200000000L
        0x400000000L
        0x800000000L
        0x1000000000L
        0x2000000000L
        0x4000000000L
        0x8000000000L
        0x10000000000L
        0x20000000000L
        0x40000000000L
        0x80000000000L
        0x100000000000L
        0x200000000000L
        0x400000000000L
        0x800000000000L
        0x1000000000000L
        0x2000000000000L
        0x4000000000000L
        0x8000000000000L
        0x10000000000000L
        0x20000000000000L
        0x40000000000000L
        0x80000000000000L
        0x100000000000000L
        0x200000000000000L
        0x400000000000000L
        0x800000000000000L
        0x1000000000000000L
        0x2000000000000000L
        0x4000000000000000L    # 2.0
        -0x8000000000000000L
    .end array-data

    :array_1
    .array-data 8
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
        0x1ffff
        0x3ffff
        0x7ffff
        0xfffff
        0x1fffff
        0x3fffff
        0x7fffff
        0xffffff
        0x1ffffff
        0x3ffffff
        0x7ffffff
        0xfffffff
        0x1fffffff
        0x3fffffff
        0x7fffffff
        0xffffffffL
        0x1ffffffffL
        0x3ffffffffL
        0x7ffffffffL
        0xfffffffffL
        0x1fffffffffL
        0x3fffffffffL
        0x7fffffffffL
        0xffffffffffL
        0x1ffffffffffL
        0x3ffffffffffL
        0x7ffffffffffL
        0xfffffffffffL
        0x1fffffffffffL
        0x3fffffffffffL
        0x7fffffffffffL
        0xffffffffffffL
        0x1ffffffffffffL
        0x3ffffffffffffL    # 5.562684646268E-309
        0x7ffffffffffffL
        0xfffffffffffffL
        0x1fffffffffffffL
        0x3fffffffffffffL
        0x7fffffffffffffL
        0xffffffffffffffL
        0x1ffffffffffffffL    # 4.77830972673648E-299
        0x3ffffffffffffffL
        0x7ffffffffffffffL
        0xfffffffffffffffL
        0x1fffffffffffffffL
        0x3fffffffffffffffL    # 1.9999999999999998
        0x7fffffffffffffffL
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-direct {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign([J)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    iget p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;Ljava/security/SecureRandom;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    iget p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, p1, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    :goto_0
    iget p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    sub-int/2addr p1, v2

    if-ge v1, p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    aput-wide v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    rsub-int/lit8 v2, v2, 0x40

    ushr-long/2addr p1, v2

    aput-wide p1, v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide p1

    aput-wide p1, v0, v1

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v2, p1, v1

    iget p2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    rsub-int/lit8 p2, p2, 0x40

    ushr-long/2addr v2, p2

    aput-wide v2, p1, v1

    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    iget p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign([B)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;[J)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    return-void
.end method

.method public static ONE(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_0

    const-wide/16 v3, -0x1

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v4, v0, v2

    aput-wide v4, v1, v3

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;[J)V

    return-object v0
.end method

.method public static ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    new-array v0, v0, [J

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;[J)V

    return-object v1
.end method

.method private assign(Ljava/math/BigInteger;)V
    .locals 0

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign([B)V

    return-void
.end method

.method private assign([B)V
    .locals 9

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    ushr-int/lit8 v2, v0, 0x3

    aget-wide v3, v1, v2

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    aget-byte v5, p1, v5

    int-to-long v5, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    and-int/lit8 v7, v0, 0x7

    shl-int/lit8 v7, v7, 0x3

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    aput-wide v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private assign([J)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private getElement()[J
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    array-length v1, v0

    new-array v1, v1, [J

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private getElementReverseOrder()[J
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    array-length v0, v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    if-ge v1, v2, :cond_1

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    ushr-int/lit8 v2, v1, 0x6

    aget-wide v3, v0, v2

    sget-object v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    and-int/lit8 v6, v1, 0x3f

    aget-wide v6, v5, v6

    or-long/2addr v3, v6

    aput-wide v3, v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    return-object v0
.end method

.method public addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v5, v4, v0

    xor-long/2addr v2, v5

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public assignOne()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v2, v3

    aput-wide v3, v0, v1

    return-void
.end method

.method public assignZero()V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v3, v2, v1

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v5, v2, v1

    cmp-long v2, v3, v5

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method

.method public increase()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->increaseThis()V

    return-object v0
.end method

.method public increaseThis()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->ONE(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    return-void
.end method

.method public invert()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->invertThis()V

    return-object v0
.end method

.method public invertThis()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x1f

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    if-ltz v0, :cond_1

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    sub-int/2addr v5, v4

    int-to-long v5, v5

    sget-object v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v8, v7, v0

    and-long/2addr v5, v8

    cmp-long v7, v5, v2

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v4

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    sub-int/2addr v0, v4

    const/4 v5, 0x1

    :goto_1
    if-ltz v0, :cond_4

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    const/4 v7, 0x1

    :goto_2
    if-gt v7, v5, :cond_2

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->squareThis()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v1, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;->multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    shl-int/lit8 v5, v5, 0x1

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    sub-int/2addr v6, v4

    int-to-long v6, v6

    sget-object v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v9, v8, v0

    and-long/2addr v6, v9

    cmp-long v8, v6, v2

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->squareThis()V

    invoke-interface {v1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;->multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->squareThis()V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0
.end method

.method public isOne()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v5, v4, -0x1

    if-ge v2, v5, :cond_1

    if-eqz v3, :cond_1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v4, v3, v2

    const-wide/16 v6, -0x1

    and-long v3, v4, v6

    cmp-long v5, v3, v6

    if-nez v5, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    sub-int/2addr v4, v0

    aget-wide v3, v2, v4

    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v6, v5, -0x1

    aget-wide v6, v2, v6

    and-long/2addr v3, v6

    sub-int/2addr v5, v0

    aget-wide v5, v2, v5

    cmp-long v2, v3, v5

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move v3, v0

    :cond_3
    return v3
.end method

.method public isZero()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    if-ge v2, v4, :cond_1

    if-eqz v3, :cond_1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v4, v3, v2

    const-wide/16 v6, -0x1

    and-long v3, v4, v6

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    return-object v0
.end method

.method public multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    if-eqz v2, :cond_16

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    move-object v3, v1

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    iget-object v4, v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->squareThis()V

    goto/16 :goto_a

    :cond_0
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget-object v2, v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v4, v3, [J

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    iget-object v5, v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mMult:[[I

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    iget v7, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    sub-int/2addr v7, v6

    sget-object v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v9, 0x3f

    aget-wide v10, v8, v9

    aget-wide v7, v8, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    iget v14, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    if-ge v13, v14, :cond_14

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    iget v6, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    const-wide/16 v16, 0x0

    if-ge v14, v6, :cond_3

    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget v18, v6, v14

    and-int/lit8 v19, v14, 0x3f

    aget-object v20, v5, v14

    aget v21, v20, v12

    aget v22, v6, v21

    and-int/lit8 v21, v21, 0x3f

    aget-wide v23, v1, v18

    sget-object v18, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v25, v18, v19

    and-long v23, v23, v25

    cmp-long v19, v23, v16

    if-eqz v19, :cond_2

    aget-wide v22, v2, v22

    aget-wide v24, v18, v21

    and-long v21, v22, v24

    cmp-long v19, v21, v16

    if-eqz v19, :cond_1

    xor-int/lit8 v15, v15, 0x1

    :cond_1
    const/16 v19, 0x1

    aget v9, v20, v19

    const/4 v12, -0x1

    if-eq v9, v12, :cond_2

    aget v6, v6, v9

    and-int/lit8 v9, v9, 0x3f

    aget-wide v22, v2, v6

    aget-wide v24, v18, v9

    and-long v22, v22, v24

    cmp-long v6, v22, v16

    if-eqz v6, :cond_2

    xor-int/lit8 v15, v15, 0x1

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const/16 v9, 0x3f

    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget v6, v6, v13

    and-int/lit8 v9, v13, 0x3f

    if-eqz v15, :cond_4

    aget-wide v14, v4, v6

    sget-object v12, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v22, v12, v9

    xor-long v14, v14, v22

    aput-wide v14, v4, v6

    :cond_4
    iget v6, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    const-wide/16 v14, 0x1

    const/4 v9, 0x1

    if-le v6, v9, :cond_f

    aget-wide v22, v1, v3

    and-long v22, v22, v14

    cmp-long v6, v22, v14

    if-nez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v9, v3, -0x1

    move v12, v9

    :goto_3
    if-ltz v12, :cond_8

    aget-wide v22, v1, v12

    and-long v24, v22, v14

    cmp-long v18, v24, v16

    if-eqz v18, :cond_6

    const/16 v18, 0x1

    goto :goto_4

    :cond_6
    const/16 v18, 0x0

    :goto_4
    const/16 v20, 0x1

    ushr-long v22, v22, v20

    aput-wide v22, v1, v12

    if-eqz v6, :cond_7

    xor-long v22, v22, v10

    aput-wide v22, v1, v12

    :cond_7
    add-int/lit8 v12, v12, -0x1

    move/from16 v6, v18

    goto :goto_3

    :cond_8
    const/16 v20, 0x1

    aget-wide v22, v1, v3

    ushr-long v22, v22, v20

    aput-wide v22, v1, v3

    if-eqz v6, :cond_9

    xor-long v22, v22, v7

    aput-wide v22, v1, v3

    :cond_9
    aget-wide v22, v2, v3

    and-long v22, v22, v14

    cmp-long v6, v22, v14

    if-nez v6, :cond_a

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    :goto_5
    if-ltz v9, :cond_d

    aget-wide v22, v2, v9

    and-long v24, v22, v14

    cmp-long v12, v24, v16

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    goto :goto_6

    :cond_b
    const/4 v12, 0x0

    :goto_6
    const/16 v18, 0x1

    ushr-long v22, v22, v18

    aput-wide v22, v2, v9

    if-eqz v6, :cond_c

    xor-long v22, v22, v10

    aput-wide v22, v2, v9

    :cond_c
    add-int/lit8 v9, v9, -0x1

    move v6, v12

    goto :goto_5

    :cond_d
    const/16 v18, 0x1

    aget-wide v14, v2, v3

    ushr-long v14, v14, v18

    aput-wide v14, v2, v3

    if-eqz v6, :cond_e

    xor-long/2addr v14, v7

    aput-wide v14, v2, v3

    :cond_e
    const/4 v6, 0x0

    const/4 v9, 0x1

    goto :goto_9

    :cond_f
    const/4 v6, 0x0

    aget-wide v16, v1, v6

    and-long v18, v16, v14

    cmp-long v9, v18, v14

    if-nez v9, :cond_10

    const/4 v9, 0x1

    const/16 v19, 0x1

    goto :goto_7

    :cond_10
    const/4 v9, 0x1

    const/16 v19, 0x0

    :goto_7
    ushr-long v16, v16, v9

    aput-wide v16, v1, v6

    if-eqz v19, :cond_11

    xor-long v16, v16, v7

    aput-wide v16, v1, v6

    :cond_11
    aget-wide v16, v2, v6

    and-long v18, v16, v14

    cmp-long v9, v18, v14

    if-nez v9, :cond_12

    const/4 v9, 0x1

    const/16 v19, 0x1

    goto :goto_8

    :cond_12
    const/4 v9, 0x1

    const/16 v19, 0x0

    :goto_8
    ushr-long v14, v16, v9

    aput-wide v14, v2, v6

    if-eqz v19, :cond_13

    xor-long/2addr v14, v7

    aput-wide v14, v2, v6

    :cond_13
    :goto_9
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x1

    const/16 v9, 0x3f

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_14
    invoke-direct {v0, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign([J)V

    :goto_a
    return-void

    :cond_15
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    :cond_16
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The elements have different representation: not yet implemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reverseOrder()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->getElementReverseOrder()[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    return-void
.end method

.method public solveQuadraticEquation()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->trace()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    sget-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v3, 0x3f

    aget-wide v4, v1, v3

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v1, v1, [J

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-wide v9, v6

    :goto_0
    iget v11, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v12, v11, -0x1

    if-ge v8, v12, :cond_7

    const/4 v11, 0x1

    :goto_1
    const/16 v12, 0x40

    if-ge v11, v12, :cond_3

    sget-object v12, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v13, v12, v11

    iget-object v15, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v16, v15, v8

    and-long v18, v13, v16

    cmp-long v15, v18, v6

    if-eqz v15, :cond_0

    add-int/lit8 v15, v11, -0x1

    aget-wide v18, v12, v15

    and-long v18, v9, v18

    cmp-long v15, v18, v6

    if-nez v15, :cond_2

    :cond_0
    and-long v15, v16, v13

    cmp-long v17, v15, v6

    if-nez v17, :cond_1

    add-int/lit8 v15, v11, -0x1

    aget-wide v15, v12, v15

    and-long/2addr v15, v9

    cmp-long v12, v15, v6

    if-eqz v12, :cond_2

    :cond_1
    xor-long/2addr v9, v13

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    aput-wide v9, v1, v8

    and-long/2addr v9, v4

    const-wide/16 v11, 0x1

    cmp-long v13, v9, v6

    if-eqz v13, :cond_4

    iget-object v9, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    add-int/lit8 v10, v8, 0x1

    aget-wide v14, v9, v10

    and-long v9, v11, v14

    cmp-long v14, v9, v11

    if-eqz v14, :cond_5

    :cond_4
    if-nez v13, :cond_6

    iget-object v9, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    add-int/lit8 v10, v8, 0x1

    aget-wide v13, v9, v10

    and-long v9, v11, v13

    cmp-long v13, v9, v6

    if-nez v13, :cond_6

    :cond_5
    move-wide v9, v6

    goto :goto_2

    :cond_6
    move-wide v9, v11

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_7
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    and-int/2addr v3, v4

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    sub-int/2addr v11, v2

    aget-wide v11, v4, v11

    const/4 v4, 0x1

    :goto_3
    if-ge v4, v3, :cond_b

    sget-object v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v13, v5, v4

    and-long v15, v13, v11

    cmp-long v8, v15, v6

    if-eqz v8, :cond_8

    add-int/lit8 v8, v4, -0x1

    aget-wide v15, v5, v8

    and-long/2addr v15, v9

    cmp-long v8, v15, v6

    if-nez v8, :cond_a

    :cond_8
    and-long v15, v13, v11

    cmp-long v8, v15, v6

    if-nez v8, :cond_9

    add-int/lit8 v8, v4, -0x1

    aget-wide v15, v5, v8

    and-long/2addr v15, v9

    cmp-long v5, v15, v6

    if-eqz v5, :cond_a

    :cond_9
    xor-long v8, v9, v13

    move-wide v9, v8

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    sub-int/2addr v3, v2

    aput-wide v9, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;[J)V

    return-object v2

    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method public square()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->squareThis()V

    return-object v0
.end method

.method public squareRoot()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->squareRootThis()V

    return-object v0
.end method

.method public squareRootThis()V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v1

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    sub-int/2addr v4, v3

    sget-object v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v6, 0x3f

    aget-wide v6, v5, v6

    const/4 v5, 0x0

    aget-wide v8, v1, v5

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    const-wide/16 v12, 0x0

    cmp-long v14, v8, v12

    if-eqz v14, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    move v9, v2

    :goto_1
    if-ltz v9, :cond_4

    aget-wide v14, v1, v9

    and-long v16, v14, v10

    cmp-long v18, v16, v12

    if-eqz v18, :cond_1

    const/16 v16, 0x1

    goto :goto_2

    :cond_1
    const/16 v16, 0x0

    :goto_2
    ushr-long/2addr v14, v3

    aput-wide v14, v1, v9

    if-eqz v8, :cond_3

    if-ne v9, v2, :cond_2

    sget-object v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v17, v8, v4

    xor-long v14, v14, v17

    aput-wide v14, v1, v9

    goto :goto_3

    :cond_2
    xor-long/2addr v14, v6

    aput-wide v14, v1, v9

    :cond_3
    :goto_3
    add-int/lit8 v9, v9, -0x1

    move/from16 v8, v16

    goto :goto_1

    :cond_4
    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign([J)V

    return-void
.end method

.method public squareThis()V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v1

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    sub-int/2addr v4, v3

    sget-object v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v6, 0x3f

    aget-wide v6, v5, v6

    aget-wide v8, v1, v2

    aget-wide v10, v5, v4

    and-long/2addr v8, v10

    const/4 v5, 0x0

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    :goto_1
    const-wide/16 v12, 0x1

    if-ge v9, v2, :cond_3

    aget-wide v14, v1, v9

    and-long v16, v14, v6

    cmp-long v18, v16, v10

    if-eqz v18, :cond_1

    const/16 v16, 0x1

    goto :goto_2

    :cond_1
    const/16 v16, 0x0

    :goto_2
    shl-long/2addr v14, v3

    aput-wide v14, v1, v9

    if-eqz v8, :cond_2

    xor-long/2addr v12, v14

    aput-wide v12, v1, v9

    :cond_2
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v16

    goto :goto_1

    :cond_3
    aget-wide v6, v1, v2

    sget-object v9, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v14, v9, v4

    and-long/2addr v14, v6

    cmp-long v16, v14, v10

    if-eqz v16, :cond_4

    const/4 v5, 0x1

    :cond_4
    shl-long/2addr v6, v3

    aput-wide v6, v1, v2

    if-eqz v8, :cond_5

    xor-long/2addr v6, v12

    aput-wide v6, v1, v2

    :cond_5
    if-eqz v5, :cond_6

    aget-wide v5, v1, v2

    add-int/2addr v4, v3

    aget-wide v3, v9, v4

    xor-long/2addr v3, v5

    aput-wide v3, v1, v2

    :cond_6
    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign([J)V

    return-void
.end method

.method public testBit(I)Z
    .locals 6

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    ushr-int/lit8 v2, p1, 0x6

    aget-wide v2, v1, v2

    sget-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    and-int/lit8 p1, p1, 0x3f

    aget-wide v4, v1, p1

    and-long v1, v2, v4

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public testRightmostBit()Z
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-wide v3, v0, v1

    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    sub-int/2addr v1, v2

    aget-wide v5, v0, v1

    and-long v0, v3, v5

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public toByteArray()[B
    .locals 9

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    ushr-int/lit8 v5, v2, 0x3

    aget-wide v5, v4, v5

    and-int/lit8 v4, v2, 0x7

    shl-int/lit8 v4, v4, 0x3

    const-wide/16 v7, 0xff

    shl-long/2addr v7, v4

    and-long/2addr v5, v7

    ushr-long v4, v5, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toFlexiBigInt()Ljava/math/BigInteger;
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->getElement()[J

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-ne p1, v3, :cond_4

    .line 11
    .line 12
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    const-string p1, "0"

    .line 15
    .line 16
    const-string v4, "1"

    .line 17
    .line 18
    const-wide/16 v5, 0x0

    .line 19
    .line 20
    if-ltz v1, :cond_1

    .line 21
    .line 22
    array-length v7, v0

    .line 23
    add-int/lit8 v7, v7, -0x1

    .line 24
    .line 25
    aget-wide v7, v0, v7

    .line 26
    .line 27
    const-wide/16 v9, 0x1

    .line 28
    .line 29
    shl-long/2addr v9, v1

    .line 30
    and-long/2addr v7, v9

    .line 31
    cmp-long v9, v7, v5

    .line 32
    .line 33
    if-nez v9, :cond_0

    .line 34
    .line 35
    invoke-static {v2, p1}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-static {v2, v4}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_1
    move-object v2, p1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    array-length v1, v0

    .line 47
    sub-int/2addr v1, v3

    .line 48
    :goto_2
    if-ltz v1, :cond_5

    .line 49
    .line 50
    const/16 v3, 0x3f

    .line 51
    .line 52
    :goto_3
    if-ltz v3, :cond_3

    .line 53
    .line 54
    aget-wide v7, v0, v1

    .line 55
    .line 56
    sget-object v9, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    .line 57
    .line 58
    aget-wide v10, v9, v3

    .line 59
    .line 60
    and-long/2addr v7, v10

    .line 61
    cmp-long v9, v7, v5

    .line 62
    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    if-nez v9, :cond_2

    .line 72
    .line 73
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :goto_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    add-int/lit8 v3, v3, -0x1

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    const/16 v1, 0x10

    .line 91
    .line 92
    if-ne p1, v1, :cond_5

    .line 93
    .line 94
    new-array p1, v1, [C

    .line 95
    .line 96
    fill-array-data p1, :array_0

    .line 97
    .line 98
    .line 99
    array-length v3, v0

    .line 100
    :goto_5
    add-int/lit8 v3, v3, -0x1

    .line 101
    .line 102
    if-ltz v3, :cond_5

    .line 103
    .line 104
    invoke-static {v2}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    aget-wide v4, v0, v3

    .line 109
    .line 110
    const/16 v6, 0x3c

    .line 111
    .line 112
    ushr-long/2addr v4, v6

    .line 113
    long-to-int v5, v4

    .line 114
    and-int/lit8 v4, v5, 0xf

    .line 115
    .line 116
    aget-char v4, p1, v4

    .line 117
    .line 118
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-static {v2}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    aget-wide v4, v0, v3

    .line 130
    .line 131
    const/16 v6, 0x38

    .line 132
    .line 133
    ushr-long/2addr v4, v6

    .line 134
    long-to-int v5, v4

    .line 135
    and-int/lit8 v4, v5, 0xf

    .line 136
    .line 137
    aget-char v4, p1, v4

    .line 138
    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-static {v2}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    aget-wide v4, v0, v3

    .line 151
    .line 152
    const/16 v6, 0x34

    .line 153
    .line 154
    ushr-long/2addr v4, v6

    .line 155
    long-to-int v5, v4

    .line 156
    and-int/lit8 v4, v5, 0xf

    .line 157
    .line 158
    aget-char v4, p1, v4

    .line 159
    .line 160
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-static {v2}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    aget-wide v4, v0, v3

    .line 172
    .line 173
    const/16 v6, 0x30

    .line 174
    .line 175
    ushr-long/2addr v4, v6

    .line 176
    long-to-int v5, v4

    .line 177
    and-int/lit8 v4, v5, 0xf

    .line 178
    .line 179
    aget-char v4, p1, v4

    .line 180
    .line 181
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-static {v2}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    aget-wide v4, v0, v3

    .line 193
    .line 194
    const/16 v6, 0x2c

    .line 195
    .line 196
    ushr-long/2addr v4, v6

    .line 197
    long-to-int v5, v4

    .line 198
    and-int/lit8 v4, v5, 0xf

    .line 199
    .line 200
    aget-char v4, p1, v4

    .line 201
    .line 202
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-static {v2}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    aget-wide v4, v0, v3

    .line 214
    .line 215
    const/16 v6, 0x28

    .line 216
    .line 217
    ushr-long/2addr v4, v6

    .line 218
    long-to-int v5, v4

    .line 219
    and-int/lit8 v4, v5, 0xf

    .line 220
    .line 221
    aget-char v4, p1, v4

    .line 222
    .line 223
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-static {v2}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    aget-wide v4, v0, v3

    .line 235
    .line 236
    const/16 v6, 0x24

    .line 237
    .line 238
    ushr-long/2addr v4, v6

    .line 239
    long-to-int v5, v4

    .line 240
    and-int/lit8 v4, v5, 0xf

    .line 241
    .line 242
    aget-char v4, p1, v4

    .line 243
    .line 244
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-static {v2}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    aget-wide v4, v0, v3

    .line 256
    .line 257
    const/16 v6, 0x20

    .line 258
    .line 259
    ushr-long/2addr v4, v6

    .line 260
    long-to-int v5, v4

    .line 261
    and-int/lit8 v4, v5, 0xf

    .line 262
    .line 263
    aget-char v4, p1, v4

    .line 264
    .line 265
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-static {v2}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    aget-wide v4, v0, v3

    .line 277
    .line 278
    const/16 v6, 0x1c

    .line 279
    .line 280
    ushr-long/2addr v4, v6

    .line 281
    long-to-int v5, v4

    .line 282
    and-int/lit8 v4, v5, 0xf

    .line 283
    .line 284
    aget-char v4, p1, v4

    .line 285
    .line 286
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-static {v2}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    aget-wide v4, v0, v3

    .line 298
    .line 299
    const/16 v6, 0x18

    .line 300
    .line 301
    ushr-long/2addr v4, v6

    .line 302
    long-to-int v5, v4

    .line 303
    and-int/lit8 v4, v5, 0xf

    .line 304
    .line 305
    aget-char v4, p1, v4

    .line 306
    .line 307
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-static {v2}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    aget-wide v4, v0, v3

    .line 319
    .line 320
    const/16 v6, 0x14

    .line 321
    .line 322
    ushr-long/2addr v4, v6

    .line 323
    long-to-int v5, v4

    .line 324
    and-int/lit8 v4, v5, 0xf

    .line 325
    .line 326
    aget-char v4, p1, v4

    .line 327
    .line 328
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-static {v2}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    aget-wide v4, v0, v3

    .line 340
    .line 341
    ushr-long/2addr v4, v1

    .line 342
    long-to-int v5, v4

    .line 343
    and-int/lit8 v4, v5, 0xf

    .line 344
    .line 345
    aget-char v4, p1, v4

    .line 346
    .line 347
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-static {v2}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    aget-wide v4, v0, v3

    .line 359
    .line 360
    const/16 v6, 0xc

    .line 361
    .line 362
    ushr-long/2addr v4, v6

    .line 363
    long-to-int v5, v4

    .line 364
    and-int/lit8 v4, v5, 0xf

    .line 365
    .line 366
    aget-char v4, p1, v4

    .line 367
    .line 368
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-static {v2}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    aget-wide v4, v0, v3

    .line 380
    .line 381
    const/16 v6, 0x8

    .line 382
    .line 383
    ushr-long/2addr v4, v6

    .line 384
    long-to-int v5, v4

    .line 385
    and-int/lit8 v4, v5, 0xf

    .line 386
    .line 387
    aget-char v4, p1, v4

    .line 388
    .line 389
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-static {v2}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    aget-wide v4, v0, v3

    .line 401
    .line 402
    const/4 v6, 0x4

    .line 403
    ushr-long/2addr v4, v6

    .line 404
    long-to-int v5, v4

    .line 405
    and-int/lit8 v4, v5, 0xf

    .line 406
    .line 407
    aget-char v4, p1, v4

    .line 408
    .line 409
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-static {v2}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    aget-wide v4, v0, v3

    .line 421
    .line 422
    long-to-int v5, v4

    .line 423
    and-int/lit8 v4, v5, 0xf

    .line 424
    .line 425
    aget-char v4, p1, v4

    .line 426
    .line 427
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    const-string v4, " "

    .line 435
    .line 436
    invoke-static {v2, v4}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    goto/16 :goto_5

    .line 441
    .line 442
    :cond_5
    return-object v2

    .line 443
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public trace()I
    .locals 12

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-wide/16 v4, 0x0

    if-ge v2, v0, :cond_2

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x40

    if-ge v6, v7, :cond_1

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v8, v7, v2

    sget-object v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v10, v7, v6

    and-long v7, v8, v10

    cmp-long v9, v7, v4

    if-eqz v9, :cond_0

    xor-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    :goto_2
    if-ge v1, v2, :cond_4

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v7, v6, v0

    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v9, v6, v1

    and-long v6, v7, v9

    cmp-long v8, v6, v4

    if-eqz v8, :cond_3

    xor-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return v3
.end method
