.class public abstract Lic/e;
.super Lic/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lic/a<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field public a:Lic/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lic/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lic/l;->a:Lic/l;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.util.ArrayMap<T of org.jetbrains.kotlin.util.AttributeArrayOwner>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lic/a;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lic/e;->a:Lic/c;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final l()Lic/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lic/c<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lic/e;->a:Lic/c;

    return-object v0
.end method
