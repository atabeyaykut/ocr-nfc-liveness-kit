.class public final Lr3/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/w$a;
    }
.end annotation


# static fields
.field public static final b:Lr3/w;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr3/w$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lr3/w$a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lr3/w;

    .line 7
    .line 8
    iget-object v0, v0, Lr3/w$a;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lr3/w;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lr3/w;->b:Lr3/w;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/w;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lr3/w;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lr3/w;

    iget-object v0, p0, Lr3/w;->a:Ljava/lang/String;

    iget-object p1, p1, Lr3/w;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lr3/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lr3/w;->a:Ljava/lang/String;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
