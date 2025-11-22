.class public final synthetic Lc5/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/p2;
.implements Lr2/e;


# static fields
.field public static final synthetic a:Lc5/z;

.field public static final synthetic b:Lc5/z;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc5/z;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/z;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc5/z;->a:Lc5/z;

    .line 7
    .line 8
    new-instance v0, Lc5/z;

    .line 9
    .line 10
    invoke-direct {v0}, Lc5/z;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lc5/z;->b:Lc5/z;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lc5/r2;->a:Ljava/util/List;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/q9;->b:Lcom/google/android/gms/internal/measurement/q9;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q9;->b()Lcom/google/android/gms/internal/measurement/r9;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/r9;->f()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    return-object p1
.end method
