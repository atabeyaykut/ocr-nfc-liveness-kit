.class public final Lmc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/regex/Matcher;

.field public b:Lmc/c$a;


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmc/c;->a:Ljava/util/regex/Matcher;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmc/c;->b:Lmc/c$a;

    if-nez v0, :cond_0

    new-instance v0, Lmc/c$a;

    invoke-direct {v0, p0}, Lmc/c$a;-><init>(Lmc/c;)V

    iput-object v0, p0, Lmc/c;->b:Lmc/c$a;

    :cond_0
    iget-object v0, p0, Lmc/c;->b:Lmc/c$a;

    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    return-object v0
.end method
