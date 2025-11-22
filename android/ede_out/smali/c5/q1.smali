.class public final synthetic Lc5/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/p2;


# static fields
.field public static final synthetic a:Lc5/q1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc5/q1;

    invoke-direct {v0}, Lc5/q1;-><init>()V

    sput-object v0, Lc5/q1;->a:Lc5/q1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lc5/r2;->a:Ljava/util/List;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/t9;->b:Lcom/google/android/gms/internal/measurement/t9;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/t9;->a:Lcom/google/android/gms/internal/measurement/g5;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/android/gms/internal/measurement/u9;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/u9;->a()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    long-to-int v1, v0

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
