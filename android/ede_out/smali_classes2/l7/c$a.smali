.class public final Ll7/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll7/c;->a(Lp7/a;)Ll7/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll7/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lj7/i;


# direct methods
.method public constructor <init>(Lj7/i;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Ll7/c$a;->a:Lj7/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ll7/c$a;->a:Lj7/i;

    invoke-interface {v0}, Lj7/i;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
