.class public final Ljf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljf/c;


# instance fields
.field public final a:[C

.field public final b:I

.field public final c:I

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljf/c;

    invoke-direct {v0}, Ljf/c;-><init>()V

    sput-object v0, Ljf/c;->e:Ljf/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Ljf/c;->a:[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljf/c;->b:I

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    iput v0, p0, Ljf/c;->c:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljf/c;->d:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljf/c;->a:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Ljf/c;->d:Ljava/util/HashMap;

    aget-char v1, v1, v0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
