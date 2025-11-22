.class public final Lvb/i$b;
.super Lvb/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvb/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Lvb/i$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvb/i$b;

    invoke-direct {v0}, Lvb/i$b;-><init>()V

    sput-object v0, Lvb/i$b;->b:Lvb/i$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lvb/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    sget-object v0, Lm9/x;->a:Lm9/x;

    return-object v0
.end method

.method public final d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    sget-object v0, Lm9/x;->a:Lm9/x;

    return-object v0
.end method

.method public final g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;"
        }
    .end annotation

    sget-object v0, Lm9/x;->a:Lm9/x;

    return-object v0
.end method
