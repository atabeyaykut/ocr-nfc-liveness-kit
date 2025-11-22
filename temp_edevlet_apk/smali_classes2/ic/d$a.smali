.class public final Lic/d$a;
.super Lm9/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/d;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm9/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public c:I

.field public final synthetic d:Lic/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lic/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lic/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lic/d<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lic/d$a;->d:Lic/d;

    invoke-direct {p0}, Lm9/b;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lic/d$a;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lic/d$a;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lic/d$a;->c:I

    .line 6
    .line 7
    iget-object v2, p0, Lic/d$a;->d:Lic/d;

    .line 8
    .line 9
    iget-object v2, v2, Lic/d;->a:[Ljava/lang/Object;

    .line 10
    .line 11
    array-length v3, v2

    .line 12
    if-ge v0, v3, :cond_1

    .line 13
    .line 14
    aget-object v3, v2, v0

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    :cond_1
    array-length v3, v2

    .line 19
    if-lt v0, v3, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    iput v0, p0, Lm9/b;->a:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    aget-object v0, v2, v0

    .line 26
    .line 27
    const-string v2, "null cannot be cast to non-null type T of org.jetbrains.kotlin.util.ArrayMapImpl"

    .line 28
    .line 29
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lm9/b;->b:Ljava/lang/Object;

    .line 33
    .line 34
    iput v1, p0, Lm9/b;->a:I

    .line 35
    .line 36
    :goto_0
    return-void
.end method
