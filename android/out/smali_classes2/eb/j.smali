.class public final Leb/j;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/Collection<",
        "+",
        "Llb/f;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Leb/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Leb/j;

    invoke-direct {v0}, Leb/j;-><init>()V

    sput-object v0, Leb/j;->a:Leb/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lm9/v;->a:Lm9/v;

    return-object v0
.end method
